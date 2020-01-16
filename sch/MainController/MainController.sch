EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5E11A1CE
P 5550 3600
F 0 "A1" H 5550 4781 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5550 4690 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5550 3600 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5550 3600 50  0001 C CNN
	1    5550 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 5E11B373
P 7400 1800
F 0 "J1" H 7457 2125 50  0000 C CNN
F 1 "Power Input" H 7457 2034 50  0000 C CNN
F 2 "User:PJ-002B" H 7450 1760 50  0001 C CNN
F 3 "~" H 7450 1760 50  0001 C CNN
	1    7400 1800
	1    0    0    -1  
$EndComp
Text Label 7700 1700 0    50   ~ 0
12V_input
Wire Wire Line
	5450 4800 5450 4750
Wire Wire Line
	5450 4750 5550 4750
Wire Wire Line
	5550 4750 5550 4700
Connection ~ 5450 4750
Wire Wire Line
	5450 4750 5450 4700
Wire Wire Line
	5550 4750 5650 4750
Wire Wire Line
	5650 4750 5650 4700
Connection ~ 5550 4750
Text Label 5450 2350 1    50   ~ 0
12V_input
Wire Wire Line
	5450 2350 5450 2600
$Comp
L power:GND #PWR0102
U 1 1 5E12E294
P 4150 3900
F 0 "#PWR0102" H 4150 3650 50  0001 C CNN
F 1 "GND" H 4155 3727 50  0000 C CNN
F 2 "" H 4150 3900 50  0001 C CNN
F 3 "" H 4150 3900 50  0001 C CNN
	1    4150 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E12FBA9
P 5450 4800
F 0 "#PWR0103" H 5450 4550 50  0001 C CNN
F 1 "GND" H 5455 4627 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E13572D
P 8200 1950
F 0 "#PWR0104" H 8200 1700 50  0001 C CNN
F 1 "GND" H 8205 1777 50  0000 C CNN
F 2 "" H 8200 1950 50  0001 C CNN
F 3 "" H 8200 1950 50  0001 C CNN
	1    8200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1950
$Comp
L power:+5V #PWR0105
U 1 1 5E13896B
P 5750 2350
F 0 "#PWR0105" H 5750 2200 50  0001 C CNN
F 1 "+5V" H 5765 2523 50  0000 C CNN
F 2 "" H 5750 2350 50  0001 C CNN
F 3 "" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2350 5750 2600
Text Label 4950 3600 2    50   ~ 0
SW_2
Wire Wire Line
	4950 3500 5050 3500
Wire Wire Line
	5050 3600 4950 3600
Wire Wire Line
	4950 3700 5050 3700
Text Label 4000 3600 0    50   ~ 0
SW_1
Text Label 4000 3700 0    50   ~ 0
SW_2
Text Label 4000 3800 0    50   ~ 0
SW_3
Text Label 4950 4000 2    50   ~ 0
SIG_1
Text Label 4950 3900 2    50   ~ 0
SIG_2
Text Label 4950 3800 2    50   ~ 0
SIG_3
Wire Wire Line
	4950 4000 5050 4000
Wire Wire Line
	4950 3800 5050 3800
Wire Wire Line
	4950 3900 5050 3900
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5E1790B5
P 8100 3000
F 0 "J2" H 8180 3042 50  0000 L CNN
F 1 "Sensor_CH1" H 8180 2951 50  0000 L CNN
F 2 "TerminalBlock_Dinkle2:ECH381R-3p" H 8100 3000 50  0001 C CNN
F 3 "~" H 8100 3000 50  0001 C CNN
	1    8100 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5E17A336
P 8100 3400
F 0 "J3" H 8180 3442 50  0000 L CNN
F 1 "Sensor_CH2" H 8180 3351 50  0000 L CNN
F 2 "TerminalBlock_Dinkle2:ECH381R-3p" H 8100 3400 50  0001 C CNN
F 3 "~" H 8100 3400 50  0001 C CNN
	1    8100 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 5E17ABE9
P 8100 3800
F 0 "J4" H 8180 3842 50  0000 L CNN
F 1 "Sensor_CH3" H 8180 3751 50  0000 L CNN
F 2 "TerminalBlock_Dinkle2:ECH381R-3p" H 8100 3800 50  0001 C CNN
F 3 "~" H 8100 3800 50  0001 C CNN
	1    8100 3800
	1    0    0    -1  
$EndComp
Text Label 7800 3000 2    50   ~ 0
SIG_1
Text Label 7800 3400 2    50   ~ 0
SIG_2
Text Label 7800 3800 2    50   ~ 0
SIG_3
Text Label 7800 3100 2    50   ~ 0
GND
Text Label 7800 3500 2    50   ~ 0
GND
Text Label 7800 3900 2    50   ~ 0
GND
Wire Wire Line
	7800 3900 7900 3900
Wire Wire Line
	7900 3800 7800 3800
Wire Wire Line
	7900 3500 7800 3500
Wire Wire Line
	7900 3400 7800 3400
Wire Wire Line
	7900 3100 7800 3100
Wire Wire Line
	7800 3000 7900 3000
$Comp
L Device:Polyfuse_Small F1
U 1 1 5E180244
P 7250 2900
F 0 "F1" V 7045 2900 50  0000 C CNN
F 1 "Polyfuse_Small" V 7136 2900 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 7300 2700 50  0001 L CNN
F 3 "~" H 7250 2900 50  0001 C CNN
	1    7250 2900
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse_Small F2
U 1 1 5E181C9F
P 7250 3300
F 0 "F2" V 7045 3300 50  0000 C CNN
F 1 "Polyfuse_Small" V 7136 3300 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 7300 3100 50  0001 L CNN
F 3 "~" H 7250 3300 50  0001 C CNN
	1    7250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse_Small F3
U 1 1 5E182F63
P 7250 3700
F 0 "F3" V 7045 3700 50  0000 C CNN
F 1 "Polyfuse_Small" V 7136 3700 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 7300 3500 50  0001 L CNN
F 3 "~" H 7250 3700 50  0001 C CNN
	1    7250 3700
	0    1    1    0   
$EndComp
$Comp
L User:SZH-PWSD-016 U1
U 1 1 5E11A689
P 7450 4550
F 0 "U1" H 7600 4665 50  0000 C CNN
F 1 "SZH-PWSD-016" H 7600 4574 50  0000 C CNN
F 2 "User:SZH-PWSD-016" H 7850 4100 50  0001 C CNN
F 3 "" H 7450 4650 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Text Label 7200 4850 2    50   ~ 0
12V_input
Wire Wire Line
	7200 4850 7300 4850
Text Label 8000 4750 0    50   ~ 0
5V_ext
Text Label 8000 4850 0    50   ~ 0
GND
Text Label 7200 4750 2    50   ~ 0
GND
Wire Wire Line
	7200 4750 7300 4750
Wire Wire Line
	7900 4750 8000 4750
Wire Wire Line
	7900 4850 8000 4850
Text Label 6700 2900 2    50   ~ 0
5V_ext
Wire Wire Line
	6700 2900 6850 2900
Wire Wire Line
	6850 2900 6850 3300
Wire Wire Line
	6850 3300 7150 3300
Connection ~ 6850 2900
Wire Wire Line
	6850 2900 7150 2900
Wire Wire Line
	6850 3300 6850 3700
Wire Wire Line
	6850 3700 7150 3700
Connection ~ 6850 3300
Wire Wire Line
	7350 3700 7900 3700
Wire Wire Line
	7350 3300 7900 3300
Wire Wire Line
	7350 2900 7900 2900
$Comp
L Mechanical:MountingHole H1
U 1 1 5E1327FF
P 8700 5700
F 0 "H1" H 8800 5746 50  0000 L CNN
F 1 "MountingHole" H 8800 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 8700 5700 50  0001 C CNN
F 3 "~" H 8700 5700 50  0001 C CNN
	1    8700 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E133539
P 9500 5700
F 0 "H3" H 9600 5746 50  0000 L CNN
F 1 "MountingHole" H 9600 5655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9500 5700 50  0001 C CNN
F 3 "~" H 9500 5700 50  0001 C CNN
	1    9500 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E13445F
P 8700 5950
F 0 "H2" H 8800 5996 50  0000 L CNN
F 1 "MountingHole" H 8800 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 8700 5950 50  0001 C CNN
F 3 "~" H 8700 5950 50  0001 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E1352CC
P 9500 5950
F 0 "H4" H 9600 5996 50  0000 L CNN
F 1 "MountingHole" H 9600 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 9500 5950 50  0001 C CNN
F 3 "~" H 9500 5950 50  0001 C CNN
	1    9500 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E140EC5
P 7600 5350
F 0 "C1" V 7855 5350 50  0000 C CNN
F 1 "CP" V 7764 5350 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 7638 5200 50  0001 C CNN
F 3 "~" H 7600 5350 50  0001 C CNN
	1    7600 5350
	0    -1   -1   0   
$EndComp
Text Label 7300 5350 2    50   ~ 0
5V_ext
Text Label 7900 5350 0    50   ~ 0
GND
Wire Wire Line
	7750 5350 7900 5350
Wire Wire Line
	7450 5350 7300 5350
$Comp
L Connector:Conn_01x05_Male J5
U 1 1 5E19C8CB
P 3700 3700
F 0 "J5" H 3808 4081 50  0000 C CNN
F 1 "DIP_SW_IN" H 3808 3990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3600 4000 3600
Wire Wire Line
	3900 3700 4000 3700
Wire Wire Line
	3900 3800 4000 3800
$Comp
L power:+5V #PWR0101
U 1 1 5E1A3516
P 4150 3500
F 0 "#PWR0101" H 4150 3350 50  0001 C CNN
F 1 "+5V" H 4165 3673 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3500 4150 3500
Wire Wire Line
	3900 3900 4150 3900
Text Label 4950 3500 2    50   ~ 0
SW_3
Text Label 4950 3700 2    50   ~ 0
SW_1
Text Label 4950 3200 2    50   ~ 0
SIG_OUT
Wire Wire Line
	4950 3200 5050 3200
Text Label 3100 5550 2    50   ~ 0
SIG_OUT
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 5E1544B4
P 3750 5550
F 0 "Q1" H 3954 5596 50  0000 L CNN
F 1 "IRFZ44N" H 3954 5505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4000 5475 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 3750 5550 50  0001 L CNN
	1    3750 5550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5E1337A2
P 3400 5900
F 0 "D1" V 3354 5979 50  0000 L CNN
F 1 "1N4148" V 3445 5979 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3400 5725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3400 5900 50  0001 C CNN
	1    3400 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5550 3400 5750
Wire Wire Line
	3100 5550 3400 5550
Wire Wire Line
	3400 5550 3550 5550
Connection ~ 3400 5550
Wire Wire Line
	3400 6100 3400 6050
$Comp
L power:GND #PWR0106
U 1 1 5E139C42
P 3400 6100
F 0 "#PWR0106" H 3400 5850 50  0001 C CNN
F 1 "GND" H 3405 5927 50  0000 C CNN
F 2 "" H 3400 6100 50  0001 C CNN
F 3 "" H 3400 6100 50  0001 C CNN
	1    3400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5700 4450 5800
$Comp
L Diode:1N5822 D2
U 1 1 5E1D0529
P 4450 5550
F 0 "D2" V 4404 5629 50  0000 L CNN
F 1 "1N5822" V 4495 5629 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P3.81mm_Vertical_AnodeUp" H 4450 5375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4450 5550 50  0001 C CNN
	1    4450 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E13D445
P 3850 6100
F 0 "#PWR0107" H 3850 5850 50  0001 C CNN
F 1 "GND" H 3855 5927 50  0000 C CNN
F 2 "" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0001 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
Text Label 3850 5200 0    50   ~ 0
12V_input
Wire Wire Line
	4450 5400 4450 5300
Wire Wire Line
	3850 5300 3850 5350
Wire Wire Line
	3850 5200 3850 5300
Connection ~ 3850 5300
Wire Wire Line
	4450 5300 3850 5300
Wire Wire Line
	3850 6100 3850 6050
Wire Wire Line
	3850 6050 3950 6050
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5E1699D6
P 4150 5950
F 0 "J6" H 4230 5942 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4230 5851 50  0000 L CNN
F 2 "TerminalBlock_Dinkle2:ECH381V-2p" H 4150 5950 50  0001 C CNN
F 3 "~" H 4150 5950 50  0001 C CNN
	1    4150 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5950 3950 5950
Wire Wire Line
	3850 5800 3850 5950
Wire Wire Line
	3850 5750 3850 5800
Connection ~ 3850 5800
Wire Wire Line
	4450 5800 3850 5800
$EndSCHEMATC
