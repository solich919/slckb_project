MCU			= atmega32u4
F_CPU		= 16000000 

PORT		= $(shell pavr2cmd --prog-port)
CFLAGS		= -g -Wall -mcall-prologues -mmcu=$(MCU) -DF_CPU=$(F_CPU) -Os
LDFLAGS		= -Wl,-relax -Wl,-gc-sections
CC			= avr-gcc

TARGET		= main
OBJS		= main.o lib/fast_ringbuff/ringbuff.o

#COMPILE

all: $(TARGET).hex

clean:
	rm -f *.o *.elf *.hex

%.hex: %.elf
	#rm -f $(TARGET).hex
	avr-objcopy -R .eeprom -O ihex $< $@
	avr-size $(TARGET).hex

$(TARGET).elf: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

#AVRDUDE

program: $(TARGET).hex
	avrdude -c stk500v2 -P "$(PORT)" -p $(MCU) -U flash:w:$<:i

#DEBUG

disasm:	$(TARGET).elf
	avr-objdump -d $(TARGET).elf

.PHONY: clean disasm