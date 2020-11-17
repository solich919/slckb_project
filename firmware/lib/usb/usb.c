#include <avr/io.h>

void USB_init()
{
    
}











/*
USB Related Registers
    UHWCON:
        Bit 0: UVREGE: USB pad regulator Enable
    USBCON:
        Bit 0: VBUSTE: VBUS Transition Interrupt Enable Bit
        Bit 4: OTGPADE: VBUS Pad Enable
        Bit 5: FRZCLK: Freeze USB Clock Bit
        Bit 7: USBE: USB macro Enable Bit
    USBSTA:
        Bit 0: VBUS: VBus Flag
        Bit 1: ID: ID status
    USBINT:
        Bit 0: VBUSTI: IVBUS Transition Interrupt Flag
    
    UDCON:
        Bit 0 - DETACH - Detach Bit
        Bit 1 - RMWKUP - Remote Wake-up Bit
        Bit 2 - LSM - USB Device Low Speed Mode Selection
        Bit 3 - RSTCPU - USB Reset CPU bit
    UDINT:
        Bit 0 - SUSPI - Suspend Interrupt Flag
        Bit 2 - SOFI - Start Of Frame Interrupt Flag
        Bit 3 - EORSTI - End Of Reset Interrupt Flag
        Bit 4 - WAKEUPI - Wake-up CPU Interrupt Flag
        Bit 5 - EORSMI - End Of Resume Interrupt Flag
        Bit 6 - UPRSMI - Upstream Resume Interrupt Flag
    UDIEN:
        Bit 0 - SUSPE - Suspend Interrupt Enable Bit
        Bit 2 - SOFE - Start Of Frame Interrupt Enable Bit
        Bit 3 - EORSTE - End Of Reset Interrupt Enable Bit
        Bit 4 - WAKEUPE - Wake-up CPU Interrupt Enable Bit
        Bit 5 - EORSME - End Of Resume Interrupt Enable Bit
        Bit 6 - UPRSME - Upstream Resume Interrupt Enable Bit
    UDADDR:
          Bits 6-0 - UADD6:0 - USB Address Bits
          Bit 7 - ADDEN - Address Enable Bit
    UDFNUMH:
        Bits 2-0 - FNUM10:8 - Frame Number Upper Value
    UDFNUML:
        Bits 7:0 - FNUM7:0 - Frame Number Lower Value
    UDMFN:
        Bit 4 - FNCERR - Frame Number CRC Error Flag
    UENUM:
        Bits 2-0 - EPNUM2:0 Endpoint Number Bits
    UERST:
        Bits 6-0 - EPRST6:0 - Endpoint FIFO Reset Bits
    UECONX:
        Bit 0 - EPEN - Endpoint Enable Bit
        Bit 3 - RSTDT - Reset Data Toggle Bit
        Bit 4 - STALLRQC - STALL Request Clear Handshake Bit
        Bit 5 - STALLRQ - STALL Request Handshake Bit
    UECFG0X:
        Bit 0 - EPDIR - Endpoint Direction Bit
        Bits 7:6 - EPTYPE1:0 - Endpoint Type Bits
    UECFG1X:
        Bit 1 - ALLOC - Endpoint Allocation Bit
        Bits 3:2 - EPBK1:0 - Endpoint Bank Bits
        Bits 6-4 - EPSIZE2:0 - Endpoint Size Bits
    UESTA0X:
        Bits 1:0 - NBUSYBK1:0 - Busy Bank Flag
        Bits 3-2 - DTSEQ1:0 - Data Toggle Sequencing Flag
        Bit 5 - UNDERFI - Flow Error Interrupt Flag
        Bit 6 - OVERFI - Overflow Error Interrupt Flag
        Bit 7 - CFGOK - Configuration Status Flag
    UESTA1X:
        Bits 1:0 - CURRBK1:0 - Current Bank (all endpoints except Control endpoint) Flag
        Bit 2 - CTRLDIR - Control Direction (Flag, and bit for debug purpose)
    UEINTX:

*/
