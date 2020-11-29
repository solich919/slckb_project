#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

struct ring_buffer
{
    uint8_t *buffer;
    uint8_t read_pointer;
    uint8_t write_pointer;
    uint8_t mask;
    uint8_t counter;
};

bool buffer_is_full(struct ring_buffer *buffer_name)
{
    if(buffer_name->counter > buffer_name->mask)
        return 1;
    else
        return 0;
}

bool buffer_is_empty(struct ring_buffer *buffer_name)
{
    if(buffer_name->counter == 0)
        return 1;
    else
        return 0;
}

uint8_t buffer_read_byte(struct ring_buffer *buffer_name)
{
    buffer_name->counter--;
    uint8_t temp = buffer_name->buffer[buffer_name->read_pointer];
    buffer_name->read_pointer++;
    buffer_name->read_pointer &= buffer_name->mask;
    return temp;
}

void buffer_write_byte(struct ring_buffer *buffer_name, uint8_t byte)
{
    buffer_name->counter++;
    buffer_name->buffer[buffer_name->write_pointer] = byte;
    buffer_name->write_pointer++;
    buffer_name->write_pointer &= buffer_name->mask;
}

void buffer_init(struct ring_buffer *buffer_name, uint8_t n_size)
{
    buffer_name->mask = (1<<n_size)-1;
    buffer_name->buffer = malloc(1<<n_size);
    buffer_name->write_pointer = 0;
    buffer_name->read_pointer = 0;
    buffer_name->counter = 0;
}

void buffer_reset(struct ring_buffer *buffer_name)
{
    buffer_name->read_pointer = buffer_name->write_pointer;
    buffer_name->counter = 0;
}

void buffer_string(struct ring_buffer *buffer_name, char *string)
{
    for(uint8_t i = 0; string[i] != 0x00; i++)
        buffer_write_byte(buffer_name, string[i]);
}