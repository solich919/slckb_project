#pragma once
#include <avr/io.h>
#include "../fast_ringbuff/ringbuff.h"

void UART_Init(uint16_t baud);
void UART_Transmit(uint8_t data);
void UART_Dump(struct ring_buffer *buffer_name);