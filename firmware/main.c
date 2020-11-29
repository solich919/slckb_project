#include <avr/io.h>
//#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include "lib/fast_ringbuff/ringbuff.h"
#include "lib/simple_uart/simple_uart.h"


#define N_OF_ROWS 2
#define MATRIX_COL_PIN PINB

uint8_t LastDebounceResult[N_OF_ROWS];

struct ring_buffer UART_FIFO;

/* 
uint8_t debounce(uint8_t SampleA)
{
	static uint8_t SubSample[2][N_OF_ROWS];
	static uint8_t LastDebounceResult;

	LastDebounceResult = (LastDebounceResult & (SampleA | SubSample[0] | SubSample[1])) | (SampleA & SubSample[0] & SubSample[1]);
	SubSample[1] = SubSample[0];
	SubSample[0] = SampleA;
	return LastDebounceResult;
}
 */

void IO_init()
{
    DDRB = 0x00;
    PORTB = 0xFF;

    DDRC = (1<<PC7) | (1<<PC6);
    PORTC = 0;

}

void TIM0_init() //ok
{
    #define COM0A   ( (0<<COM0A1) | (0<<COM0A0) )
    #define COM0B   ( (0<<COM0B1) | (0<<COM0B0) )
    #define WGM0    ( (0<<WGM02) | (1<<WGM01) | (0<<WGM00) )
    #define CS0     ( (0<<CS02) | (1<<CS01) | (1<<CS00) )
    #define TIMSK00 ( (0<<OCIE0B) | (1<<OCIE0A) | (0<<TOIE0) )
    
    //TCCR0
    TCCR0A = COM0A | COM0B | (WGM0 & 0b011);
    TCCR0B = (WGM0 & 0b1000) | CS0;
    //Interrupts
    TIMSK0 = TIMSK00;
    //for 1ms interrupts
    OCR0A = 124;
}



void matrix_scan_subroutine()
{
    static uint8_t SubSample[3][N_OF_ROWS];
    //static uint8_t LastDebounceResult[N_OF_ROWS];
    
#pragma GCC unroll 999
    for(uint8_t row = 0; row < N_OF_ROWS; row++)
    {
        SubSample[0][row] = MATRIX_COL_PIN;
        LastDebounceResult[row] = 
        (LastDebounceResult[row] & (SubSample[0][row] | SubSample[1][row] | SubSample[2][row])) | 
        (SubSample[0][row] & SubSample[1][row] & SubSample[2][row]);
        
        SubSample[2][row] = SubSample[1][row];
	    SubSample[1][row] = SubSample[0][row];
        //może by tak przesuwać subsample zamiast kopiować? jak w ring buffer
        //PORTC = PORTC++ & 0b01000000;
        PORTC |= 0b10000000;
    }
    PORTC = 0;
}











int main()
{
    IO_init();
    UART_Init(103);
    //TIM0_init();
    buffer_init(&UART_FIFO, 8);

    //sei();
    for(;;)
    {
        buffer_string(&UART_FIFO, "Hello world\n\r");
        buffer_string(&UART_FIFO, "topkek\n\r");
        _delay_ms(1000);
        USART_Dump(&UART_FIFO);
        //sleep_cpu();
    }
}

ISR(TIMER0_COMPA_vect)
{
    /* -_- */
}
//dec -> ascii => x+48