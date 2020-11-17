#pragma once
struct setup_packet {
	uint8_t  bmRequestType;
	uint8_t  bRequest;
	uint16_t wValue;
	uint16_t wIndex;
	uint16_t wLength;
};

/* A structure which contains endpoint's whole configuration */
struct endpoint_config {
	uint8_t num;
	uint8_t type;
	uint8_t config;
	uint8_t int_flags;
};

/* 2 helper functions used to write request conditions */
static inline bool request_type(struct setup_packet *s, uint8_t mask, uint8_t flags)
{
	return (s->bmRequestType & mask) == flags;
}
static inline bool request(struct setup_packet *s, uint8_t req)
{
	return s->bRequest == req;
}

static inline void USB_control_write_complete_status_stage()
{
	USB_wait_IN();
	/* send Zero Length Packet */
	USB_flush_IN();
}

static inline void USB_control_read_complete_status_stage()
{
	/* wait for Zero Length Packet from host */
	USB_wait_OUT();
	/* acknowledge it */
	USB_flush_OUT();
}

void USB_init();
void USB_close();
bool USB_is_sleeping();
void USB_wakeup();
uint8_t USB_get_configuration();