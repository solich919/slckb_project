#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include "util.h"
#include "matrix.h"
#include "debounce.h"
#include "quantum.h"

#if (MATRIX_ROWS > 16) //check for valid rows number
    #error "MATRIX_ROWS: invalid value"
#endif

extern matrix_row_t raw_matrix[MATRIX_ROWS];  // raw values
extern matrix_row_t matrix[MATRIX_ROWS];      // debounced values

static inline void select_row(uint8_t row)
{
    ATOMIC_BLOCK_FORCEON //this ensures uninterrupted block execution
    {
        //shift row value to the left 4 bits
        row <<= 4;
        //write to port F while preserving PF0 PF1
        PORTF = (PORTF & 0b00000011) | row;
        //this is the fastest way
    }
}

void matrix_init_custom(void)
{
    ATOMIC_BLOCK_FORCEON
    {
        //initialize 4-16 pins and set them to low
        //define following pins as output
        DDRF |= (1<<PF4) | (1<<PF5) | (1<<PF6) |(1<<PF7);
        PORTF |= (0<<PF4) | (0<<PF5) | (0<<PF6) |(0<<PF7);

        #if (MATRIX_COLS <= 8)
            //initialize port D as input with pullup
            //make sure PORTD is set as input
            DDRD = 0;
            //activate internal pull-up
            PORTD = 0xFF;
        #elif (MATRIX_COLS <= 16) //if cols>8 then also use prot B
            //initialize port D and B as input with pullup
            //make sure PORTD and B is set as input
            DDRD = 0;
            DDRB = 0;
            //activate internal pull-up
            PORTD = 0xFF;
            PORTB = 0xFF;
        #else
        #    error "MATRIX_COLS: invalid value"
        #endif
    }
    //zero matrix table
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        raw_matrix[i] = 0;
        matrix[i]     = 0;
    }
    //init debounce
    debounce_init(MATRIX_ROWS);
}

bool matrix_scan_custom(void) {
    bool changed = false;

    #pragma GCC unroll 16 //unroll this loop for faster scannig
    for (uint8_t current_row = 0; current_row < MATRIX_ROWS; current_row++) //scan through rows
    {
        select_row(current_row); //select row
        matrix_io_delay(); // wait 1us (defined in config.h)
        #if (MATRIX_COLS <= 8) //get PIND values
            matrix_row_t current_row_value = ~PIND; //has to be NOTed because columns pins are pulled-up, so pressed = 0
        #elif (MATRIX_COLS <= 16)
            matrix_row_t current_row_value = 0;
            matrix_row_t current_row_value |= ~PIND;
            matrix_row_t current_row_value |= ~PINB<<8;
        #else
        #    error "MATRIX_COLS: invalid value"
        #endif

        //check for changes
        if (raw_matrix[current_row] != current_row_value)
        {
            raw_matrix[current_row] = current_row_value; //if changed, keep it and change flag value
            changed = 1;
        }
    }
    debounce(raw_matrix, matrix, MATRIX_ROWS, changed); //qmk's debounce

    return changed;
}
