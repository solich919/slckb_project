EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "slckb uC Board"
Date ""
Rev "0.1"
Comp "SLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Polyfuse F1
U 1 1 5FA1EDB0
P 1350 950
F 0 "F1" V 1125 950 50  0000 C CNN
F 1 "500m" V 1216 950 50  0000 C CNN
F 2 "Fuse:Fuse_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1400 750 50  0001 L CNN
F 3 "~" H 1350 950 50  0001 C CNN
	1    1350 950 
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR06
U 1 1 5FA1FBE5
P 1700 1550
F 0 "#PWR06" H 1700 1300 50  0001 C CNN
F 1 "GNDD" H 1704 1395 50  0000 C CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FA2063C
P 2150 950
F 0 "#FLG01" H 2150 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1123 50  0000 C CNN
F 2 "" H 2150 950 50  0001 C CNN
F 3 "~" H 2150 950 50  0001 C CNN
	1    2150 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5FA21131
P 1150 5250
F 0 "C10" H 1035 5296 50  0000 R CNN
F 1 "1u" H 1035 5205 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1188 5100 50  0001 C CNN
F 3 "~" H 1150 5250 50  0001 C CNN
	1    1150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR04
U 1 1 5FA21F4B
P 1700 950
F 0 "#PWR04" H 1700 800 50  0001 C CNN
F 1 "VBUS" H 1715 1123 50  0000 C CNN
F 2 "" H 1700 950 50  0001 C CNN
F 3 "" H 1700 950 50  0001 C CNN
	1    1700 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FA2270A
P 900 4700
F 0 "R4" V 693 4700 50  0000 C CNN
F 1 "22R" V 784 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_MiniMELF_MMA-0204" V 830 4700 50  0001 C CNN
F 3 "~" H 900 4700 50  0001 C CNN
	1    900  4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FA235A2
P 900 4800
F 0 "R5" V 1015 4800 50  0000 C CNN
F 1 "22R" V 1106 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_MiniMELF_MMA-0204" V 830 4800 50  0001 C CNN
F 3 "~" H 900 4800 50  0001 C CNN
	1    900  4800
	0    1    1    0   
$EndComp
Wire Notes Line
	2500 2000 2500 500 
Wire Notes Line
	2500 500  500  500 
Wire Notes Line
	500  500  500  2000
Wire Notes Line
	500  2000 2500 2000
Wire Wire Line
	1500 950  1700 950 
Wire Wire Line
	1000 950  1200 950 
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5FA308EC
P 2150 1550
F 0 "#FLG02" H 2150 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1723 50  0000 C CNN
F 2 "" H 2150 1550 50  0001 C CNN
F 3 "~" H 2150 1550 50  0001 C CNN
	1    2150 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1550 1700 1550
Wire Wire Line
	1700 950  2150 950 
Connection ~ 1700 950 
Text Notes 550  600  0    50   ~ 0
USB Input
Connection ~ 1700 1550
Wire Wire Line
	1700 1550 2150 1550
Text Label 1000 1150 0    50   ~ 0
D-
Text Label 1000 1350 0    50   ~ 0
D+
Wire Wire Line
	1050 4700 1250 4700
Wire Wire Line
	1050 4800 1250 4800
Text Label 750  4800 2    50   ~ 0
D-
Text Label 750  4700 2    50   ~ 0
D+
Wire Wire Line
	1850 7000 1800 7000
NoConn ~ 1250 4300
Wire Wire Line
	1150 5100 1150 5000
Wire Wire Line
	1150 5000 1250 5000
$Comp
L power:GNDD #PWR023
U 1 1 5FA3CAFB
P 1150 5400
F 0 "#PWR023" H 1150 5150 50  0001 C CNN
F 1 "GNDD" H 1154 5245 50  0000 C CNN
F 2 "" H 1150 5400 50  0001 C CNN
F 3 "" H 1150 5400 50  0001 C CNN
	1    1150 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5FA3E15E
P 1500 2550
F 0 "Y1" H 1500 2931 50  0000 C CNN
F 1 "Crystal_GND24" H 1500 2840 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM3B-4Pin_5.0x3.2mm" H 1500 2550 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2550 1350 2550
Wire Wire Line
	1650 2550 1850 2550
Wire Wire Line
	2150 2550 2150 2750
Wire Wire Line
	2150 2750 1500 2750
Wire Wire Line
	1500 2750 850  2750
Wire Wire Line
	850  2750 850  2550
Connection ~ 1500 2750
Wire Wire Line
	850  2550 850  2350
Wire Wire Line
	850  2350 1500 2350
Connection ~ 850  2550
Wire Wire Line
	1500 2350 2150 2350
Wire Wire Line
	2150 2350 2150 2550
Connection ~ 1500 2350
Connection ~ 2150 2550
$Comp
L power:GNDD #PWR012
U 1 1 5FA49001
P 1500 2750
F 0 "#PWR012" H 1500 2500 50  0001 C CNN
F 1 "GNDD" H 1504 2595 50  0000 C CNN
F 2 "" H 1500 2750 50  0001 C CNN
F 3 "" H 1500 2750 50  0001 C CNN
	1    1500 2750
	1    0    0    -1  
$EndComp
Text Label 1300 2550 2    50   ~ 0
XTAL1
Text Label 1700 2550 0    50   ~ 0
XTAL2
Text Label 1250 4100 2    50   ~ 0
XTAL2
Text Label 1250 3900 2    50   ~ 0
XTAL1
Wire Notes Line
	500  2050 2500 2050
Wire Notes Line
	2500 2050 2500 3000
Wire Notes Line
	2500 3000 500  3000
Wire Notes Line
	500  3000 500  2050
Text Notes 550  2150 0    50   ~ 0
XTAL
$Comp
L power:VBUS #PWR022
U 1 1 5FA5A64A
P 1250 4500
F 0 "#PWR022" H 1250 4350 50  0001 C CNN
F 1 "VBUS" H 1193 4537 50  0000 R CNN
F 2 "" H 1250 4500 50  0001 C CNN
F 3 "" H 1250 4500 50  0001 C CNN
	1    1250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3400 1850 3400
Connection ~ 1850 3400
Wire Wire Line
	1850 3400 1950 3400
$Comp
L power:VBUS #PWR014
U 1 1 5FA5CA16
P 1850 3400
F 0 "#PWR014" H 1850 3250 50  0001 C CNN
F 1 "VBUS" H 1865 3573 50  0000 C CNN
F 2 "" H 1850 3400 50  0001 C CNN
F 3 "" H 1850 3400 50  0001 C CNN
	1    1850 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 5FA5E7C3
P 1800 7000
F 0 "#PWR025" H 1800 6750 50  0001 C CNN
F 1 "GNDD" H 1804 6845 50  0000 C CNN
F 2 "" H 1800 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0001 C CNN
	1    1800 7000
	1    0    0    -1  
$EndComp
Connection ~ 1800 7000
Wire Wire Line
	1800 7000 1750 7000
Wire Notes Line
	500  3050 500  7550
Wire Notes Line
	500  7550 5500 7550
Wire Notes Line
	5500 7550 5500 3050
Text Label 2450 6300 0    50   ~ 0
A0
Text Label 2450 6400 0    50   ~ 0
A1
Text Label 2450 6500 0    50   ~ 0
A2
Text Label 2450 6600 0    50   ~ 0
A3
$Comp
L Device:C C6
U 1 1 5FA3FBA6
P 1000 2550
F 0 "C6" V 1150 2550 50  0000 C CNN
F 1 "10p" V 839 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1038 2400 50  0001 C CNN
F 3 "~" H 1000 2550 50  0001 C CNN
	1    1000 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5FA3EE71
P 2000 2550
F 0 "C7" V 2150 2550 50  0000 C CNN
F 1 "10p" V 1839 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2038 2400 50  0001 C CNN
F 3 "~" H 2000 2550 50  0001 C CNN
	1    2000 2550
	0    1    1    0   
$EndComp
Text Label 2450 5800 0    50   ~ 0
HWB
Wire Notes Line
	500  3050 5500 3050
Wire Wire Line
	2450 3800 3050 3800
Wire Wire Line
	2450 3900 3050 3900
Wire Wire Line
	2450 4000 3050 4000
Text Label 2450 4000 0    50   ~ 0
MISO
Text Label 2450 3900 0    50   ~ 0
MOSI
Text Label 2450 3800 0    50   ~ 0
SCK
Text Label 1250 3700 2    50   ~ 0
RST
Wire Notes Line
	2550 3000 6850 3000
Wire Notes Line
	6850 3000 6850 500 
Wire Notes Line
	6850 500  2550 500 
Wire Notes Line
	2550 500  2550 3000
Text Label 3450 5750 0    50   ~ 0
CAPS_LOCK
Text Label 3450 6050 0    50   ~ 0
NUM_LOCK
Text Label 3450 6350 0    50   ~ 0
SCROLL_LOCK
Text Label 2450 4600 0    50   ~ 0
PWM
$Comp
L power:VBUS #PWR017
U 1 1 5FACAC90
P 5000 3400
F 0 "#PWR017" H 5000 3250 50  0001 C CNN
F 1 "VBUS" V 5015 3527 50  0000 L CNN
F 2 "" H 5000 3400 50  0001 C CNN
F 3 "" H 5000 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FAC9894
P 5000 3550
F 0 "R3" V 4793 3550 50  0000 C CNN
F 1 "6k8" V 4884 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 3550 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
	1    5000 3550
	-1   0    0    1   
$EndComp
Text Notes 550  3150 0    50   ~ 0
uC
$Comp
L Device:R R2
U 1 1 5FF924EC
P 5000 4850
F 0 "R2" V 4793 4850 50  0000 C CNN
F 1 "6k8" V 4884 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 4850 50  0001 C CNN
F 3 "~" H 5000 4850 50  0001 C CNN
	1    5000 4850
	-1   0    0    1   
$EndComp
Text Label 5000 4700 0    50   ~ 0
HWB
Text Label 5000 3750 0    50   ~ 0
RST
$Comp
L Switch:SW_Push SW2
U 1 1 5FF99A0D
P 5000 4000
F 0 "SW2" V 4954 4148 50  0000 L CNN
F 1 "SW_Push" V 5045 4148 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 5000 4200 50  0001 C CNN
F 3 "~" H 5000 4200 50  0001 C CNN
	1    5000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3800 5000 3700
$Comp
L power:GNDD #PWR021
U 1 1 5FFD008E
P 5000 4200
F 0 "#PWR021" H 5000 3950 50  0001 C CNN
F 1 "GNDD" H 5004 4045 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR020
U 1 1 5FFD08CB
P 5000 5000
F 0 "#PWR020" H 5000 4750 50  0001 C CNN
F 1 "GNDD" H 5004 4845 50  0000 C CNN
F 2 "" H 5000 5000 50  0001 C CNN
F 3 "" H 5000 5000 50  0001 C CNN
	1    5000 5000
	1    0    0    -1  
$EndComp
Text Label 1050 4700 0    50   ~ 0
_D+
Text Label 1050 4800 0    50   ~ 0
_D-
Wire Wire Line
	2450 4900 3050 4900
Wire Wire Line
	2450 5000 3050 5000
Wire Wire Line
	2450 5100 3050 5100
Wire Wire Line
	2450 5200 3050 5200
Wire Wire Line
	2450 5400 2700 5400
Wire Wire Line
	2700 5400 2800 5300
Wire Wire Line
	2800 5300 3050 5300
Wire Wire Line
	2450 5300 2700 5300
Wire Wire Line
	2700 5300 2800 5400
Wire Wire Line
	2800 5400 3050 5400
Wire Wire Line
	2450 5500 3050 5500
Wire Wire Line
	2450 5600 3050 5600
Wire Wire Line
	2450 3700 3050 3700
Text Label 3050 3700 0    50   ~ 0
1
Text Label 3050 3800 0    50   ~ 0
2
Text Label 3050 3900 0    50   ~ 0
3
Text Label 3050 4000 0    50   ~ 0
4
Text Label 3050 4400 0    50   ~ 0
5
Text Label 3050 4900 0    50   ~ 0
6
Text Label 3050 5000 0    50   ~ 0
7
Text Label 3050 5100 0    50   ~ 0
8
Text Label 3050 5200 0    50   ~ 0
9
Text Label 3050 5300 0    50   ~ 0
10
Text Label 3050 5400 0    50   ~ 0
11
Text Label 3050 5500 0    50   ~ 0
12
Text Label 3050 5600 0    50   ~ 0
13
Text Label 3050 4100 0    50   ~ 0
14
Text Label 3050 4200 0    50   ~ 0
15
Text Label 3050 4300 0    50   ~ 0
16
Text Label 4500 3650 2    50   ~ 0
1
Text Label 4500 3750 2    50   ~ 0
2
Text Label 4500 3850 2    50   ~ 0
3
Text Label 4500 3950 2    50   ~ 0
4
Text Label 4500 4050 2    50   ~ 0
5
Text Label 4500 4150 2    50   ~ 0
6
Text Label 4500 4250 2    50   ~ 0
7
Text Label 4500 4350 2    50   ~ 0
8
Text Label 4500 4450 2    50   ~ 0
9
Text Label 4500 4550 2    50   ~ 0
10
Text Label 4500 4650 2    50   ~ 0
11
Text Label 4500 4750 2    50   ~ 0
12
Text Label 4500 4850 2    50   ~ 0
13
Text Label 4500 4950 2    50   ~ 0
14
Text Label 4500 5050 2    50   ~ 0
15
Text Label 4500 5150 2    50   ~ 0
16
Text Notes 2600 600  0    50   ~ 0
LED Driver
$Comp
L Device:C C4
U 1 1 602DCDE0
P 3600 1600
F 0 "C4" H 3715 1646 50  0000 L CNN
F 1 "10u" H 3715 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 3638 1450 50  0001 C CNN
F 3 "~" H 3600 1600 50  0001 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L SCT2932:SCT2932 U2
U 1 1 602DCDE6
P 5500 1450
F 0 "U2" H 5500 2100 60  0000 C CNN
F 1 "SCT2932" H 5500 2000 60  0000 C CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.3x2.3mm" H 5500 1850 60  0001 C CNN
F 3 "" H 5500 1850 60  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR027
U 1 1 602DCDF2
P 3600 1000
F 0 "#PWR027" H 3600 850 50  0001 C CNN
F 1 "VBUS" H 3615 1173 50  0000 C CNN
F 2 "" H 3600 1000 50  0001 C CNN
F 3 "" H 3600 1000 50  0001 C CNN
	1    3600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 602DCDF8
P 4250 1150
F 0 "R1" H 4200 1150 50  0000 R CNN
F 1 "270m" V 4350 1250 50  0000 R CNN
F 2 "Resistor_SMD:R_MiniMELF_MMA-0204" V 4180 1150 50  0001 C CNN
F 3 "~" H 4250 1150 50  0001 C CNN
	1    4250 1150
	-1   0    0    1   
$EndComp
Text Label 5000 1600 2    50   ~ 0
PWM
$Comp
L power:GNDD #PWR028
U 1 1 602DCDFF
P 5500 2150
F 0 "#PWR028" H 5500 1900 50  0001 C CNN
F 1 "GNDD" H 5504 1995 50  0000 C CNN
F 2 "" H 5500 2150 50  0001 C CNN
F 3 "" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1450 3600 1000
Connection ~ 3600 1000
Wire Wire Line
	5500 2150 6000 2150
Connection ~ 5500 2150
Wire Wire Line
	6000 1600 6000 1900
Wire Wire Line
	6000 2150 6000 1900
Connection ~ 6000 1900
Text Label 4100 1300 2    50   ~ 0
LED_A
Text Label 4100 1600 2    50   ~ 0
LED_K
Wire Wire Line
	5500 2150 3600 2150
Text Label 4500 5250 2    50   ~ 0
LED_A
Wire Wire Line
	3600 1750 3600 2150
$Comp
L Device:C C3
U 1 1 602DCE26
P 4250 1450
F 0 "C3" H 4365 1496 50  0000 L CNN
F 1 "10u" H 4365 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 4288 1300 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 600DA7ED
P 800 1150
F 0 "J14" H 880 1192 50  0000 L CNN
F 1 "D-" H 880 1101 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 800 1150 50  0001 C CNN
F 3 "~" H 800 1150 50  0001 C CNN
	1    800  1150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 600E73FE
P 800 1350
F 0 "J15" H 880 1392 50  0000 L CNN
F 1 "D+" H 880 1301 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 800 1350 50  0001 C CNN
F 3 "~" H 800 1350 50  0001 C CNN
	1    800  1350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 600EEE7A
P 800 950
F 0 "J2" H 880 992 50  0000 L CNN
F 1 "V+" H 880 901 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 800 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 600EF4E8
P 800 1550
F 0 "J6" H 880 1592 50  0000 L CNN
F 1 "GND" H 880 1501 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D2.0mm_Drill1.0mm" H 800 1550 50  0001 C CNN
F 3 "~" H 800 1550 50  0001 C CNN
	1    800  1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 5250 4500 5350
$Comp
L Connector:Conn_01x22_Female J1
U 1 1 600E4A17
P 4700 4250
F 0 "J1" H 4728 4226 50  0000 L CNN
F 1 "Conn_01x22_Female" H 4728 4135 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x22_P2.54mm_Vertical" H 4700 4250 50  0001 C CNN
F 3 "~" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3550 4500 3450
Connection ~ 4500 3350
Wire Wire Line
	4500 3350 4500 3250
Connection ~ 4500 3450
Wire Wire Line
	4500 3450 4500 3350
$Comp
L power:GNDD #PWR016
U 1 1 6012406F
P 4500 3250
F 0 "#PWR016" H 4500 3000 50  0001 C CNN
F 1 "GNDD" H 4504 3095 50  0000 C CNN
F 2 "" H 4500 3250 50  0001 C CNN
F 3 "" H 4500 3250 50  0001 C CNN
	1    4500 3250
	0    1    1    0   
$EndComp
Connection ~ 4500 3250
$Comp
L Device:R R6
U 1 1 601B79AB
P 3300 5750
F 0 "R6" V 3093 5750 50  0000 C CNN
F 1 "6k8" V 3184 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 5750 50  0001 C CNN
F 3 "~" H 3300 5750 50  0001 C CNN
	1    3300 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 601B89D6
P 3300 6050
F 0 "R7" V 3093 6050 50  0000 C CNN
F 1 "6k8" V 3184 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 6050 50  0001 C CNN
F 3 "~" H 3300 6050 50  0001 C CNN
	1    3300 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 601B8D6A
P 3300 6350
F 0 "R8" V 3093 6350 50  0000 C CNN
F 1 "6k8" V 3184 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 6350 50  0001 C CNN
F 3 "~" H 3300 6350 50  0001 C CNN
	1    3300 6350
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U4
U 1 1 5FA1A705
P 1850 5200
F 0 "U4" H 950 4700 50  0000 C CNN
F 1 "ATmega32U4-AU" H 950 4600 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 1850 5200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 1850 5200 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1900 4650 1900
Wire Wire Line
	3600 1000 4250 1000
$Comp
L Device:D_Schottky D1
U 1 1 602DCE05
P 4650 1450
F 0 "D1" V 4700 1500 50  0000 L CNN
F 1 "B1100" V 4600 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 4650 1450 50  0001 C CNN
F 3 "~" H 4650 1450 50  0001 C CNN
	1    4650 1450
	0    1    1    0   
$EndComp
$Comp
L Device:L_Core_Ferrite L1
U 1 1 602DCDEC
P 4250 1750
F 0 "L1" H 4200 1850 50  0000 C CNN
F 1 "DJNR6045-680" H 4250 1950 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-60xx_HandSoldering" H 4250 1750 50  0001 C CNN
F 3 "~" H 4250 1750 50  0001 C CNN
	1    4250 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 1000 4650 1300
Connection ~ 4650 1000
Wire Wire Line
	4650 1000 5000 1000
Wire Wire Line
	4650 1600 4650 1900
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 5000 1900
Connection ~ 4250 1000
Wire Wire Line
	4250 1000 4650 1000
Wire Wire Line
	4250 1300 4100 1300
Connection ~ 4250 1300
Wire Wire Line
	4250 1600 4100 1600
Connection ~ 4250 1600
Wire Wire Line
	5000 1300 4700 1300
Wire Wire Line
	4700 1300 4700 1250
Wire Wire Line
	4700 1250 4600 1250
Wire Wire Line
	4600 1250 4600 1300
Wire Wire Line
	4600 1300 4250 1300
Wire Wire Line
	2450 4100 3050 4100
Wire Wire Line
	2450 4200 3050 4200
Wire Wire Line
	2450 4300 3050 4300
Wire Wire Line
	2450 4400 3050 4400
Wire Wire Line
	9550 1650 9650 1650
Wire Wire Line
	9550 1450 9550 1650
Wire Wire Line
	8750 1450 9550 1450
Wire Wire Line
	9450 1750 9650 1750
Wire Wire Line
	9450 1550 9450 1750
Wire Wire Line
	8750 1550 9450 1550
Wire Wire Line
	9350 1850 9650 1850
Wire Wire Line
	9350 1650 9350 1850
Wire Wire Line
	8750 1650 9350 1650
Wire Wire Line
	9250 1950 9650 1950
Wire Wire Line
	9250 1750 9250 1950
Wire Wire Line
	8750 1750 9250 1750
Wire Wire Line
	9150 2050 9650 2050
Wire Wire Line
	9150 1850 9150 2050
Wire Wire Line
	8750 1850 9150 1850
Wire Wire Line
	9050 2150 9650 2150
Wire Wire Line
	9050 1950 9050 2150
Wire Wire Line
	8750 1950 9050 1950
Wire Wire Line
	8950 2250 9650 2250
Wire Wire Line
	8950 2050 8950 2250
Wire Wire Line
	8750 2050 8950 2050
Wire Wire Line
	8850 2350 9650 2350
Wire Wire Line
	8850 2150 8850 2350
Wire Wire Line
	8750 2150 8850 2150
Connection ~ 9650 3650
Wire Wire Line
	9650 3650 9650 3550
Wire Wire Line
	9650 3650 9650 3800
$Comp
L Connector:Conn_01x22_Female J3
U 1 1 600EBFF9
P 9850 2550
F 0 "J3" H 9878 2526 50  0000 L CNN
F 1 "Conn_01x22_Female" H 9878 2435 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x22_P2.54mm_Vertical" H 9850 2550 50  0001 C CNN
F 3 "~" H 9850 2550 50  0001 C CNN
	1    9850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3800 9700 3800
Wire Wire Line
	9550 3450 9550 3900
Wire Wire Line
	9550 3450 9650 3450
Text Label 9700 3800 0    50   ~ 0
LED_K
$Comp
L Device:C C2
U 1 1 602AAEC3
P 8900 4400
F 0 "C2" H 9015 4446 50  0000 L CNN
F 1 "100n" H 9015 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8938 4250 50  0001 C CNN
F 3 "~" H 8900 4400 50  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 602AAEBD
P 8900 4550
F 0 "#PWR010" H 8900 4300 50  0001 C CNN
F 1 "GNDD" H 8904 4395 50  0000 C CNN
F 2 "" H 8900 4550 50  0001 C CNN
F 3 "" H 8900 4550 50  0001 C CNN
	1    8900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR05
U 1 1 602AAEB7
P 8900 4250
F 0 "#PWR05" H 8900 4100 50  0001 C CNN
F 1 "VBUS" H 8915 4423 50  0000 C CNN
F 2 "" H 8900 4250 50  0001 C CNN
F 3 "" H 8900 4250 50  0001 C CNN
	1    8900 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR024
U 1 1 6005FEEC
P 9650 1550
F 0 "#PWR024" H 9650 1400 50  0001 C CNN
F 1 "VBUS" H 9665 1723 50  0000 C CNN
F 2 "" H 9650 1550 50  0001 C CNN
F 3 "" H 9650 1550 50  0001 C CNN
	1    9650 1550
	1    0    0    -1  
$EndComp
Text Label 9650 2650 2    50   ~ 0
SCROLL_LOCK
Text Label 9650 2550 2    50   ~ 0
NUM_LOCK
Text Label 9650 2450 2    50   ~ 0
CAPS_LOCK
$Comp
L Device:C C1
U 1 1 5FFEA518
P 7600 1000
F 0 "C1" H 7715 1046 50  0000 L CNN
F 1 "100n" H 7715 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7638 850 50  0001 C CNN
F 3 "~" H 7600 1000 50  0001 C CNN
	1    7600 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 5FFE9002
P 7600 1150
F 0 "#PWR03" H 7600 900 50  0001 C CNN
F 1 "GNDD" H 7604 995 50  0000 C CNN
F 2 "" H 7600 1150 50  0001 C CNN
F 3 "" H 7600 1150 50  0001 C CNN
	1    7600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR01
U 1 1 5FFE87AD
P 7600 850
F 0 "#PWR01" H 7600 700 50  0001 C CNN
F 1 "VBUS" H 7615 1023 50  0000 C CNN
F 2 "" H 7600 850 50  0001 C CNN
F 3 "" H 7600 850 50  0001 C CNN
	1    7600 850 
	1    0    0    -1  
$EndComp
Wire Notes Line
	6900 500  10050 500 
Wire Notes Line
	6900 5000 6900 500 
$Comp
L 74xx:74LS138 U1
U 1 1 5FA8D0C4
P 8250 1750
F 0 "U1" H 8500 2350 50  0000 C CNN
F 1 "74AHC138" H 8500 2250 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8250 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 8250 1750 50  0001 C CNN
	1    8250 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U3
U 1 1 5FA90154
P 8250 3500
F 0 "U3" H 8500 4100 50  0000 C CNN
F 1 "74AHC138" H 8500 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8250 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 8250 3500 50  0001 C CNN
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5FA39CD3
P 7750 2150
F 0 "#PWR08" H 7750 1900 50  0001 C CNN
F 1 "GNDD" H 7754 1995 50  0000 C CNN
F 2 "" H 7750 2150 50  0001 C CNN
F 3 "" H 7750 2150 50  0001 C CNN
	1    7750 2150
	1    0    0    -1  
$EndComp
Connection ~ 7750 3900
Wire Wire Line
	7750 3900 7750 3800
Wire Wire Line
	9550 3900 8750 3900
Wire Wire Line
	9450 3800 8750 3800
Wire Wire Line
	9450 3350 9450 3800
Wire Wire Line
	9650 3350 9450 3350
Wire Wire Line
	9350 3700 8750 3700
Wire Wire Line
	9350 3250 9350 3700
Wire Wire Line
	9650 3250 9350 3250
Wire Wire Line
	9250 3600 8750 3600
Wire Wire Line
	9250 3150 9250 3600
Wire Wire Line
	9650 3150 9250 3150
Wire Wire Line
	9150 3500 8750 3500
Wire Wire Line
	9150 3050 9150 3500
Wire Wire Line
	9650 3050 9150 3050
Wire Wire Line
	9050 2950 9650 2950
Wire Wire Line
	9050 3400 9050 2950
Wire Wire Line
	8750 3400 9050 3400
Wire Wire Line
	8950 2850 9650 2850
Wire Wire Line
	8950 3300 8950 2850
Wire Wire Line
	8750 3300 8950 3300
Wire Wire Line
	8850 2750 9650 2750
Wire Wire Line
	8850 3200 8850 2750
Wire Wire Line
	8750 3200 8850 3200
Text Notes 6950 600  0    50   ~ 0
4-to-16
Wire Notes Line
	10050 5000 6900 5000
Wire Notes Line
	10050 500  10050 5000
Text Label 7050 2050 0    50   ~ 0
A3
Text Label 7050 1650 0    50   ~ 0
A2
Text Label 7050 1550 0    50   ~ 0
A1
Text Label 7050 1450 0    50   ~ 0
A0
Wire Wire Line
	7350 2050 7750 2050
Connection ~ 7350 2050
Wire Wire Line
	7450 1650 7750 1650
Connection ~ 7450 1650
Wire Wire Line
	7550 1550 7750 1550
Connection ~ 7550 1550
Wire Wire Line
	7650 1450 7750 1450
Connection ~ 7650 1450
Wire Wire Line
	7650 3200 7650 1450
Wire Wire Line
	7050 1650 7450 1650
Wire Wire Line
	7050 2050 7350 2050
Wire Wire Line
	7050 1450 7650 1450
Wire Wire Line
	7050 1550 7550 1550
$Comp
L power:GNDD #PWR018
U 1 1 5FAA8B66
P 7750 3900
F 0 "#PWR018" H 7750 3650 50  0001 C CNN
F 1 "GNDD" H 7754 3745 50  0000 C CNN
F 2 "" H 7750 3900 50  0001 C CNN
F 3 "" H 7750 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR019
U 1 1 5FAA8281
P 8250 4200
F 0 "#PWR019" H 8250 3950 50  0001 C CNN
F 1 "GNDD" H 8254 4045 50  0000 C CNN
F 2 "" H 8250 4200 50  0001 C CNN
F 3 "" H 8250 4200 50  0001 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 5FAA678E
P 8250 2450
F 0 "#PWR09" H 8250 2200 50  0001 C CNN
F 1 "GNDD" H 8254 2295 50  0000 C CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR07
U 1 1 5FAA5037
P 7750 1950
F 0 "#PWR07" H 7750 1800 50  0001 C CNN
F 1 "VBUS" H 7765 2123 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR011
U 1 1 5FAA48A5
P 8250 2900
F 0 "#PWR011" H 8250 2750 50  0001 C CNN
F 1 "VBUS" H 8265 3073 50  0000 C CNN
F 2 "" H 8250 2900 50  0001 C CNN
F 3 "" H 8250 2900 50  0001 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR02
U 1 1 5FAA3E0E
P 8250 1150
F 0 "#PWR02" H 8250 1000 50  0001 C CNN
F 1 "VBUS" H 8265 1323 50  0000 C CNN
F 2 "" H 8250 1150 50  0001 C CNN
F 3 "" H 8250 1150 50  0001 C CNN
	1    8250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3700 7350 2050
Wire Wire Line
	7750 3700 7350 3700
Wire Wire Line
	7450 3400 7450 1650
Wire Wire Line
	7750 3400 7450 3400
Wire Wire Line
	7550 3300 7550 1550
Wire Wire Line
	7750 3300 7550 3300
Wire Wire Line
	7750 3200 7650 3200
Text Notes 3450 7000 0    50   ~ 0
Kondensatory oddprzęgające rozłożone \ndookoła układu i podpięte do każdego pinu VCC 
Wire Wire Line
	3650 7050 4100 7050
Connection ~ 3650 7050
Wire Wire Line
	2800 7050 3250 7050
Connection ~ 2800 7050
Wire Wire Line
	3650 7350 4100 7350
Connection ~ 3650 7350
Wire Wire Line
	2800 7350 3250 7350
Connection ~ 2800 7350
$Comp
L Device:C C9
U 1 1 5FFF5306
P 3650 7200
F 0 "C9" H 3765 7246 50  0000 L CNN
F 1 "100n" H 3765 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 7050 50  0001 C CNN
F 3 "~" H 3650 7200 50  0001 C CNN
	1    3650 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6002AA61
P 4100 7200
F 0 "C12" H 4215 7246 50  0000 L CNN
F 1 "100n" H 4215 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4138 7050 50  0001 C CNN
F 3 "~" H 4100 7200 50  0001 C CNN
	1    4100 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 6002A535
P 2350 7200
F 0 "C11" H 2465 7246 50  0000 L CNN
F 1 "100n" H 2465 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2388 7050 50  0001 C CNN
F 3 "~" H 2350 7200 50  0001 C CNN
	1    2350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7350 3650 7350
Connection ~ 3250 7350
Wire Wire Line
	2350 7350 2800 7350
Wire Wire Line
	3250 7050 3650 7050
Connection ~ 3250 7050
Wire Wire Line
	2350 7050 2800 7050
$Comp
L Device:C C5
U 1 1 5FFF43A7
P 2800 7200
F 0 "C5" H 2915 7246 50  0000 L CNN
F 1 "100n" H 2915 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2838 7050 50  0001 C CNN
F 3 "~" H 2800 7200 50  0001 C CNN
	1    2800 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5FFF20CE
P 3250 7200
F 0 "C8" H 3365 7246 50  0000 L CNN
F 1 "10u" H 3365 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 3288 7050 50  0001 C CNN
F 3 "~" H 3250 7200 50  0001 C CNN
	1    3250 7200
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR013
U 1 1 5FFEFC7F
P 3250 7050
F 0 "#PWR013" H 3250 6900 50  0001 C CNN
F 1 "VBUS" H 3265 7223 50  0000 C CNN
F 2 "" H 3250 7050 50  0001 C CNN
F 3 "" H 3250 7050 50  0001 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR015
U 1 1 5FA43FFD
P 3250 7350
F 0 "#PWR015" H 3250 7100 50  0001 C CNN
F 1 "GNDD" H 3254 7195 50  0000 C CNN
F 2 "" H 3250 7350 50  0001 C CNN
F 3 "" H 3250 7350 50  0001 C CNN
	1    3250 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5900 3150 5900
Wire Wire Line
	3150 5900 3150 5750
Wire Wire Line
	2450 6100 3150 6100
Wire Wire Line
	3150 6100 3150 6050
Wire Wire Line
	2450 6200 3150 6200
Wire Wire Line
	3150 6200 3150 6350
NoConn ~ 2450 4700
Text Notes 2500 4750 0    50   ~ 0
kana led?
$EndSCHEMATC
