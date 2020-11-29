#include <avr/io.h>
//#include <stdint.h>
#include "../fast_ringbuff/ringbuff.h"

void UART_Init(uint16_t baud)
{
    /* Set baud rate */
    UBRR1H = (uint8_t)(baud>>8);
    UBRR1L = (uint8_t)baud;
    /* Enable receiver and transmitter */
    UCSR1B = (1<<RXEN1)|(1<<TXEN1);
    /* Set frame format: 8data, 2stop bit */
    UCSR1C = (1<<USBS1)|(3<<UCSZ10);
}

void UART_Transmit(uint8_t data)
{
    /* Wait for empty transmit buffer */
    while ( !( UCSR1A & (1<<UDRE1)) )
    ;
    /* Put data into buffer, sends the data */
    UDR1 = data;
}

void UART_Dump(struct ring_buffer *buffer_name)
{
    while(!buffer_is_empty(buffer_name))
    {
        UART_Transmit(buffer_read_byte(buffer_name));
    }
}