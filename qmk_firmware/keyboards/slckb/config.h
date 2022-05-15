/*
Copyright 2021 slc

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

#include "config_common.h"

/* USB Device descriptor parameter */
#define VENDOR_ID    0xFEED
#define PRODUCT_ID   0x0000
#define DEVICE_VER   0x0001
#define MANUFACTURER slc
#define PRODUCT      slckb

/* key matrix size */
/* maximum 16 rows, maximum 16 cols */
#define MATRIX_ROWS 4
#define MATRIX_COLS 5

/* 1us should be enough */
#define MATRIX_IO_DELAY 1

/* Always col2row, not really needed since there's custom matrix code */
#define DIODE_DIRECTION COL2ROW

/* F0,E6 and F1 are the only 3 LED pins, assign to your preference */
/* if only one port is used (cols <= 8), then PORTB pins can be used */
/* after adding resistor in series */
#define LED_NUM_LOCK_PIN F0
#define LED_CAPS_LOCK_PIN E6
#define LED_SCROLL_LOCK_PIN F1
//#define LED_COMPOSE_PIN B3
//#define LED_KANA_PIN F1

/* LEDs are connected with cathodes to the uC pins */
#define LED_PIN_ON_STATE 0

/* The SCT2932 DIM pin is hardwired to C6 */
#define BACKLIGHT_PIN C6
#define BACKLIGHT_LEVELS 16
/* Enable breathing support */
#define BACKLIGHT_BREATHING
#define BREATHING_PERIOD 6
/* Use CIE1931 brightness curve */
//#define USE_CIE1931_CURVE

/* Debounce reduces chatter (unintended double-presses) - set 0 if debouncing is not needed */
/* 3 ms should be a good compromise */
#define DEBOUNCE 3

/* Mechanical locking support. Use KC_LCAP, KC_LNUM or KC_LSCR instead in keymap */
#define LOCKING_SUPPORT_ENABLE
/* Locking resynchronize hack */
#define LOCKING_RESYNC_ENABLE
/* no need for higher power, unless you set backlight driver to more than 450mA */
#define USB_MAX_POWER_CONSUMPTION 500
/* set polling rate */
#define USB_POLLING_INTERVAL_MS 2

/* If defined, GRAVE_ESC will always act as ESC when CTRL is held.
 * This is useful for the Windows task manager shortcut (ctrl+shift+esc).
 */
//#define GRAVE_ESC_CTRL_OVERRIDE

/*
 * Force NKRO
 *
 * Force NKRO (nKey Rollover) to be enabled by default, regardless of the saved
 * state in the bootmagic EEPROM settings. (Note that NKRO must be enabled in the
 * makefile for this to work.)
 *
 * If forced on, NKRO can be disabled via magic key (default = LShift+RShift+N)
 * until the next keyboard reset.
 *
 * NKRO may prevent your keystrokes from being detected in the BIOS, but it is
 * fully operational during normal computer usage.
 *
 * For a less heavy-handed approach, enable NKRO via magic key (LShift+RShift+N)
 * or via bootmagic (hold SPACE+N while plugging in the keyboard). Once set by
 * bootmagic, NKRO mode will always be enabled until it is toggled again during a
 * power-up.
 *
 */
//#define FORCE_NKRO

/*
 * Feature disable options
 *  These options are also useful to firmware size reduction.
 */

/* disable debug print */
//#define NO_DEBUG

/* disable print */
//#define NO_PRINT

/* disable action features */
//#define NO_ACTION_LAYER
//#define NO_ACTION_TAPPING
//#define NO_ACTION_ONESHOT

/* disable these deprecated features by default */
#define NO_ACTION_MACRO
#define NO_ACTION_FUNCTION

/* Bootmagic Lite key configuration */
//#define BOOTMAGIC_LITE_ROW 0
//#define BOOTMAGIC_LITE_COLUMN 0
