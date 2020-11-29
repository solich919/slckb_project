#pragma once
#include <avr/io.h>
#include "../fast_ringbuff/ringbuff.h"

void UART_Init( uint16_t baud );
void USART_Transmit( uint8_t data );
void USART_Dump(struct ring_buffer *buffer_name);