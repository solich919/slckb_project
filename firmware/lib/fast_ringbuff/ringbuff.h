#pragma once
struct ring_buffer;
void buffer_init(struct ring_buffer *buffer_name, uint8_t n_size);
void buffer_reset(struct ring_buffer *buffer_name);
uint8_t buffer_read_byte(struct ring_buffer *buffer_name);
void buffer_write_byte(struct ring_buffer *buffer_name, uint8_t byte);
bool buffer_is_full(struct ring_buffer buffer_name);
bool buffer_is_empty(struct ring_buffer buffer_name);
