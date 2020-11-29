#pragma once
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

struct ring_buffer
{
    uint8_t *buffer;
    uint8_t read_pointer;
    uint8_t write_pointer;
    uint8_t mask;
    int8_t counter;
};
void buffer_init(struct ring_buffer* buffer_name, uint8_t n_size);
void buffer_reset(struct ring_buffer* buffer_name);
uint8_t buffer_read_byte(struct ring_buffer* buffer_name);
void buffer_write_byte(struct ring_buffer* buffer_name, uint8_t byte);
bool buffer_is_full(struct ring_buffer* buffer_name);
bool buffer_is_empty(struct ring_buffer* buffer_name);
void buffer_string(struct ring_buffer* buffer_name, char string[]);
