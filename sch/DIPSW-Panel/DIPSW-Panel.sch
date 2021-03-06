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
L Connector:Conn_01x05_Male J1
U 1 1 5E1B4AC5
P 3200 2950
F 0 "J1" H 3308 3331 50  0000 C CNN
F 1 "PINOUT" H 3308 3240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3200 2950 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5E1B51E5
P 3750 2750
F 0 "#PWR0101" H 3750 2600 50  0001 C CNN
F 1 "+5V" V 3765 2878 50  0000 L CNN
F 2 "" H 3750 2750 50  0001 C CNN
F 3 "" H 3750 2750 50  0001 C CNN
	1    3750 2750
	0    1    1    0   
$EndComp
Text Label 3600 3050 0    50   ~ 0
SW1
Text Label 3600 2950 0    50   ~ 0
SW2
Text Label 3600 2850 0    50   ~ 0
SW3
$Comp
L power:GND #PWR0102
U 1 1 5E1B5C4B
P 3750 3150
F 0 "#PWR0102" H 3750 2900 50  0001 C CNN
F 1 "GND" V 3755 3022 50  0000 R CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2750 3750 2750
Wire Wire Line
	3400 3050 3600 3050
Wire Wire Line
	3400 2950 3600 2950
Wire Wire Line
	3600 2850 3400 2850
Wire Wire Line
	3400 3150 3750 3150
$Comp
L Switch:SW_DIP_x03 SW1
U 1 1 5E1B7063
P 6050 3100
F 0 "SW1" H 6050 3567 50  0000 C CNN
F 1 "SW_DIP_x03" H 6050 3476 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_LongPads" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E1B77A0
P 4750 2650
F 0 "#PWR0103" H 4750 2500 50  0001 C CNN
F 1 "+5V" H 4765 2823 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E1B7BCA
P 5100 2900
F 0 "R1" V 4893 2900 50  0000 C CNN
F 1 "1K" V 4984 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5030 2900 50  0001 C CNN
F 3 "~" H 5100 2900 50  0001 C CNN
	1    5100 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E1B8671
P 5100 3200
F 0 "R2" V 4893 3200 50  0000 C CNN
F 1 "1K" V 4984 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5030 3200 50  0001 C CNN
F 3 "~" H 5100 3200 50  0001 C CNN
	1    5100 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E1B8833
P 5100 3500
F 0 "R3" V 4893 3500 50  0000 C CNN
F 1 "1K" V 4984 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5030 3500 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2650 4750 2900
Wire Wire Line
	4750 2900 4950 2900
Wire Wire Line
	4750 2900 4750 3200
Wire Wire Line
	4750 3200 4950 3200
Connection ~ 4750 2900
Wire Wire Line
	4750 3200 4750 3500
Wire Wire Line
	4750 3500 4950 3500
Connection ~ 4750 3200
Wire Wire Line
	5450 3200 5450 3000
Wire Wire Line
	5450 3000 5600 3000
Wire Wire Line
	5250 3500 5600 3500
Wire Wire Line
	5600 3500 5600 3100
Wire Wire Line
	5600 3100 5700 3100
Wire Wire Line
	5250 3200 5450 3200
Text Label 5500 2650 1    50   ~ 0
SW1
Text Label 5600 2650 1    50   ~ 0
SW2
Text Label 5700 2650 1    50   ~ 0
SW3
$Comp
L Mechanical:MountingHole H1
U 1 1 5E1BE700
P 5800 4250
F 0 "H1" H 5900 4296 50  0000 L CNN
F 1 "MountingHole" H 5900 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 5800 4250 50  0001 C CNN
F 3 "~" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E1BF35D
P 6550 4250
F 0 "H3" H 6650 4296 50  0000 L CNN
F 1 "MountingHole" H 6650 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 6550 4250 50  0001 C CNN
F 3 "~" H 6550 4250 50  0001 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E1BF6EA
P 5800 4500
F 0 "H2" H 5900 4546 50  0000 L CNN
F 1 "MountingHole" H 5900 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 5800 4500 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E1BFA92
P 6550 4500
F 0 "H4" H 6650 4546 50  0000 L CNN
F 1 "MountingHole" H 6650 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 6550 4500 50  0001 C CNN
F 3 "~" H 6550 4500 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E191807
P 6700 2900
F 0 "#PWR0104" H 6700 2650 50  0001 C CNN
F 1 "GND" V 6705 2772 50  0000 R CNN
F 2 "" H 6700 2900 50  0001 C CNN
F 3 "" H 6700 2900 50  0001 C CNN
	1    6700 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 2900 6500 2900
Wire Wire Line
	6350 3000 6500 3000
Wire Wire Line
	6500 3000 6500 2900
Connection ~ 6500 2900
Wire Wire Line
	6500 2900 6700 2900
Wire Wire Line
	6350 3100 6500 3100
Wire Wire Line
	6500 3100 6500 3000
Connection ~ 6500 3000
Wire Wire Line
	5250 2900 5500 2900
Wire Wire Line
	5500 2650 5500 2900
Connection ~ 5500 2900
Wire Wire Line
	5500 2900 5750 2900
Wire Wire Line
	5600 2650 5600 3000
Connection ~ 5600 3000
Wire Wire Line
	5600 3000 5750 3000
Wire Wire Line
	5700 2650 5700 3100
Connection ~ 5700 3100
Wire Wire Line
	5700 3100 5750 3100
$EndSCHEMATC
