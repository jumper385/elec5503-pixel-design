*******************************************************************************
****** dff-standalone_PT schematic pixel  <vs>  dff-standalone_PT layout pixel
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(P_12_HSL130E, p_12_hsl130e) MOS                  2       7*
(inverter schematic pixel, _) Cell                5       0*
(N_12_HSL130E, n_12_hsl130e) MOS                  4       9*
                                             ------  ------
Total                                            11      16
                                                                                                                                                                                                                            
Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(N_12_HSL130E, n_12_hsl130e) MOS                  9       9           9       9
(P_12_HSL130E, p_12_hsl130e) MOS                  7       7           7       7
                                             ------  ------      ------  ------
Total                                            16      16          16      16

*******************************************************************************
****** dff_PT_even schematic pixel  <vs>  dff_PT_even layout pixel
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(mux_PT schematic pixel, _) Cell                  1       0*
(xor_PT schematic pixel, _) Cell                  1       0*
(nand_PT_even schematic pixel, _) Cell            1       0*
(dff-standalone_PT schematic pixel, dff-standalone_PT) Cell         1       1
(N_12_HSL130E, n_12_hsl130e) MOS                  0       7*
(P_12_HSL130E, p_12_hsl130e) MOS                  0       5*
                                             ------  ------
Total                                             4      13

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(dff-standalone_PT) Cell                          1       1           1       1
(N_12_HSL130E, n_12_hsl130e) MOS                  7       7           7       7
(P_12_HSL130E, p_12_hsl130e) MOS                  5       5           5       5
                                             ------  ------      ------  ------
Total                                            13      13          13      13

*******************************************************************************
****** dff_PT_odd schematic pixel  <vs>  dff_PT_odd layout pixel
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(mux_PT schematic pixel, _) Cell                  1       0*
(xor_PT schematic pixel, _) Cell                  1       0*
(nand_PT_odd schematic pixel, _) Cell             1       0*
(dff-standalone_PT schematic pixel, dff-standalone_PT) Cell         1       1
(N_12_HSL130E, n_12_hsl130e) MOS                  0       9*
(P_12_HSL130E, p_12_hsl130e) MOS                  0       5*
                                             ------  ------
Total                                             4      15

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(dff-standalone_PT) Cell                          1       1           1       1
(N_12_HSL130E, n_12_hsl130e) MOS                  9       9           9       9
(P_12_HSL130E, p_12_hsl130e) MOS                  5       5           5       5
                                             ------  ------      ------  ------
Total                                            15      15          15      15

*******************************************************************************
****** 2mux schematic pixel  <vs>  2mux layout pixel
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(inverter schematic pixel, _) Cell                1       0*
(txgate schematic pixel, _) Cell                  2       0*
(N_12_HSL130E, n_12_hsl130e) MOS                  0       3*
(P_12_HSL130E, p_12_hsl130e) MOS                  0       3*
                                             ------  ------
Total                                             3       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(N_12_HSL130E, n_12_hsl130e) MOS                  3       3           3       3
(P_12_HSL130E, p_12_hsl130e) MOS                  3       3           3       3

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(N_12_HSL130E, n_12_hsl130e) MOS                  3       3           0       0
(P_12_HSL130E, p_12_hsl130e) MOS                  3       3           0       0
                                             ------  ------      ------  ------
Total                                             6       6           0       0

Match Statistics for Nets                         7       9           0       2

=========================================================================[2mux]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  VDD
S       1   of P_12_HSL130E {D S}
S      *3   of P_12_HSL130E B

Layout Net:  VDD
L       1   of p_12_hsl130e {D S}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  GND
S       1   of N_12_HSL130E {D S}
S      *3   of N_12_HSL130E B

Layout Net:  GND
L       1   of n_12_hsl130e {D S}

=========================================================================[2mux]
====== Unmatched Pins =========================================================
===============================================================================

L ?avC8

=========================================================================[2mux]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC9

=========================================================================[2mux]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'B' of instance avD2_2 probably should connect to net 
VDD instead of net avC9.
This makes a better match between layout net VDD and schematic net VDD.

In the layout, terminal 'B' of instance avD2_1 probably should connect to net 
VDD instead of net avC9.
This makes a better match between layout net VDD and schematic net VDD.

In the layout, terminal 'B' of instance avD2_3 probably should connect to net 
VDD instead of net avC9.
This makes a better match between layout net VDD and schematic net VDD.

In the layout, terminal 'B' of instance avD1_2 probably should connect to net 
GND instead of net avC8.
This makes a better match between layout net GND and schematic net GND.

In the layout, terminal 'B' of instance avD1_3 probably should connect to net 
GND instead of net avC8.
This makes a better match between layout net GND and schematic net GND.

In the layout, terminal 'B' of instance avD1_1 probably should connect to net 
GND instead of net avC8.
This makes a better match between layout net GND and schematic net GND.


=========================================================================[2mux]
====== Open Pins ==============================================================
===============================================================================

These layout pins should connect together:
L        GND
L        avC8

=========================================================================[2mux]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?VDD
S       1   of P_12_HSL130E {D S}
S       3   of P_12_HSL130E B
S
S ?GND
S       1   of N_12_HSL130E {D S}
S       3   of N_12_HSL130E B

=========================================================================[2mux]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?VDD
L       1   of p_12_hsl130e {D S}
L
L ?avC9
L       3   of p_12_hsl130e B
L
L ?GND
L       1   of n_12_hsl130e {D S}
L
L ?avC8
L       3   of n_12_hsl130e B

=========================================================================[2mux]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: I2/PM0  P_12_HSL130E
Layout Instance:    avD2_3  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: I2/NM0  N_12_HSL130E
Layout Instance:    avD1_1  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          GND                         : ?avC8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: I1/PM0  P_12_HSL130E
Layout Instance:    avD2_1  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: I1/NM0  N_12_HSL130E
Layout Instance:    avD1_3  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          GND                         : ?avC8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: I0/PM0  P_12_HSL130E
Layout Instance:    avD2_2  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 6)
Schematic Instance: I0/NM0  N_12_HSL130E
Layout Instance:    avD1_2  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
B          GND                         : ?avC8

=========================================================================[2mux]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 -          1         Unmatched Pins
 2          2         Bad Initial Net Bindings
 -          6         Suggested Terminal Rewire
 -          1         Unmatched Internal Nets
 6          6         Matched Instances with Bad Net Connections

*******************************************************************************
****** counter_full_PT schematic pixel  <vs>  counter_full_PT layout pixel
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(dff-standalone_PT schematic pixel, dff-standalone_PT) Cell         3       3
(dff_PT_even schematic pixel, dff_PT_even) Cell           6       6
(dff_PT_odd schematic pixel, dff_PT_odd) Cell             6       6
(2mux schematic pixel, 2mux) Cell                 2       2
(nand schematic pixel, _) Cell                    1       0*
(inverter schematic pixel, _) Cell                1       0*
(N_12_HSL130E, n_12_hsl130e) MOS                  0       3*
(P_12_HSL130E, p_12_hsl130e) MOS                  0       3*
                                             ------  ------
Total                                            19      23

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(2mux) Cell                                       2       2           2       2
(dff-standalone_PT) Cell                          3       3           3       3
(dff_PT_even) Cell                                6       6           6       6
(dff_PT_odd) Cell                                 6       6           6       6
(N_12_HSL130E, n_12_hsl130e) MOS                  3       3           1       3*
(P_12_HSL130E, p_12_hsl130e) MOS                  3       3           1       3*
(N_12_HSL130E:SerMos2#1, -) MosBlk                -       -           1       -*
(P_12_HSL130E:ParMos2#1, -) MosBlk                -       -           1       -*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(2mux) Cell                                       2       2           2       2
(dff-standalone_PT) Cell                          3       3           3       3
(dff_PT_even) Cell                                6       6           0       0
(dff_PT_odd) Cell                                 6       6           0       0
(N_12_HSL130E, n_12_hsl130e) MOS                  1       3*          1       3*
(P_12_HSL130E, p_12_hsl130e) MOS                  1       3*          1       3*
(N_12_HSL130E:SerMos2#1, -) MosBlk                1       -*          1       -*
(P_12_HSL130E:ParMos2#1, -) MosBlk                1       -*          1       -*
                                             ------  ------      ------  ------
Total                                            21      23           9      11

Match Statistics for Nets                        75     132          10      67

==============================================================[counter_full_PT]
====== Pin Errors for Models ==================================================
===============================================================================

No mapping for layout pin 'avC8' in cell '2mux'

==============================================================[counter_full_PT]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  GSEL
S       6   of dff_PT_odd GSEL
S       6   of dff_PT_even GSEL

Layout Net:  GSEL
L      *4   of dff_PT_odd GSEL
L      *4   of dff_PT_even GSEL

==============================================================[counter_full_PT]
====== Unmatched Pins =========================================================
===============================================================================

S ?CLK
S ?RST

==============================================================[counter_full_PT]
====== Unbound Pin ============================================================
===============================================================================

S CLK
S VDD
S GND
S RST
S CONT
S B0
S B1
S B2
S B3
S B4
S B5
S B6
S B7
S B8
S B9
S B10
S B11

==============================================================[counter_full_PT]
====== Open Instance Connections ==============================================
===============================================================================

Schematic net RST connects to I54/RST (matched layout net I54/avC1_1)
 layout does not contain this connection
Schematic net RST connects to I56/RST (matched layout net I56/avC1_1)
 layout does not contain this connection
Schematic net RST connects to I57/RST (matched layout net I57/avC1_1)
 layout does not contain this connection
Schematic net RST connects to I61/RST (matched layout net I61/avC1_1)
 layout does not contain this connection
Schematic net RST connects to I59/RST (matched layout net I59/avC1_1)
 layout does not contain this connection
Schematic net RST connects to I63/RST (matched layout net I63/avC1_1)
 layout does not contain this connection

==============================================================[counter_full_PT]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?net019
S ?net037
S ?net046
S ?net073
S ?net076
S ?net15
S ?net013
S ?net016

L ?avC7_1
L ?avC6_1
L ?avC4_1
L ?avC1_1
L ?avC7_2
L ?avC6_2
L ?avC3_2
L ?avC2_2
L ?avC4_2
L ?avC1_2
L ?avC7_3
L ?avC6_3
L ?avC3_3
L ?avC2_3
L ?avC5_3
L ?avC4_3
L ?avC1_3
L ?avC6_4
L ?avC2_4
L ?avC3_4
L ?avC5_4
L ?avC4_4
L ?avC1_4
L ?avC6_5
L ?avC2_5
L ?avC3_5
L ?avC5_5
L ?avC4_5
L ?avC1_5
L ?avC1_6
L ?avC59
L ?avC9_8
L ?avC1_8
L ?avC1_10
L ?avC1_12
L ?avC12_14
L ?avC1_14
L ?avC10_16
L ?avC5_16
L ?avC12_16
L ?avC8_16
L ?avC3_16
L ?avC1_16
L ?avC2_20
L ?avC1_26
L ?avC1_28
L ?avC10
L ?avS11
L ?avC8
L ?avC11
L ?avS6
L ?avC9
L ?avC13
L ?avS7
L ?avC12
L ?avC4
L ?avS10
L ?avC2
L ?avC62
L ?avC5
L ?avS8
L ?avC3
L ?avC60
L ?avC7
L ?avS9
L ?avC6
L ?avC61

==============================================================[counter_full_PT]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net015
S      *1   of 2mux B
S      *1   of dff-standalone_PT Q

Layout Net:  avC3_18
L      *1   of dff_PT_odd CLK

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net058
S      *1   of P_12_HSL130E {D S}
S      *1   of N_12_HSL130E {D S}
S       1   of dff-standalone_PT CLK

Layout Net:  avC3_1
L       1   of dff-standalone_PT CLK

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  net023
S       1   of dff-standalone_PT D
S      *1   of N_12_HSL130E:SerMos2#1 {OUT OUT2}
S      *1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}

Layout Net:  avC2_1
L       1   of dff-standalone_PT D

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 4)
Schematic Net:  net0142
S      *1   of P_12_HSL130E G
S      *1   of N_12_HSL130E G
S       1   of dff_PT_odd !CONT_OUT
S       1   of dff_PT_even !CONT_IN

Layout Net:  avC57
L       1   of dff_PT_odd !CONT_OUT
L       1   of dff_PT_even !CONT_IN

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 5)
Schematic Net:  net17
S       1   of dff_PT_odd Q
S      *1   of dff_PT_even CLK
S       1   of dff_PT_even QPREV

Layout Net:  avC43
L       1   of dff_PT_odd Q
L       1   of dff_PT_even QPREV

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 6)
Schematic Net:  VDD
S      *1   of P_12_HSL130E {D S}
S      *1   of P_12_HSL130E B
S      *2   of 2mux VDD
S      *3   of dff-standalone_PT VDD
S       6   of dff_PT_odd VDD
S       1   of dff_PT_odd CONT_IN
S       1   of dff_PT_odd !QPREV
S       6   of dff_PT_even VDD
S      *1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S      *1   of P_12_HSL130E:ParMos2#1 TERM4

Layout Net:  avC15
L       6   of dff_PT_odd VDD
L       1   of dff_PT_odd CONT_IN
L       1   of dff_PT_odd !QPREV
L       6   of dff_PT_even VDD

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 7)
Schematic Net:  GND
S      *1   of N_12_HSL130E {D S}
S       1   of N_12_HSL130E B
S      *2   of 2mux GND
S      *1   of 2mux B
S      *3   of dff-standalone_PT GND
S       6   of dff_PT_odd GND
S       1   of dff_PT_odd QPREV
S       6   of dff_PT_even GND
S      *1   of N_12_HSL130E:SerMos2#1 {OUT OUT2}
S      *1   of N_12_HSL130E:SerMos2#1 TERM4

Layout Net:  avC14
L      *3   of n_12_hsl130e B
L      *2   of 2mux ?avC8
L       6   of dff_PT_odd GND
L       1   of dff_PT_odd QPREV
L       6   of dff_PT_even GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 8)
Schematic Net:  CONT
S      *1   of dff-standalone_PT CLK
S       1   of dff_PT_even CONT_OUT

Layout Net:  avC4_16
L       1   of dff_PT_even CONT_OUT

==============================================================[counter_full_PT]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'GSEL' of instance I60 probably should connect to net 
GSEL instead of net avC12_14.
This makes a better match between layout net GSEL and schematic net GSEL.

In the layout, terminal 'GSEL' of instance I65 probably should connect to net 
GSEL instead of net avC12_16.
This makes a better match between layout net GSEL and schematic net GSEL.

In the layout, terminal 'GSEL' of instance I59 probably should connect to net 
GSEL instead of net avC1_28.
This makes a better match between layout net GSEL and schematic net GSEL.

In the layout, terminal 'GSEL' of instance I63 probably should connect to net 
GSEL instead of net avC1_26.
This makes a better match between layout net GSEL and schematic net GSEL.

In the layout, terminal 'RST' of instance I55 probably should connect to net 
avC1_8 instead of net avC1_6.
This makes a better match between layout net avC1_8 and schematic net RST.

In the layout, terminal 'RST' of instance I60 probably should connect to net 
avC1_8 instead of net avC1_14.
This makes a better match between layout net avC1_8 and schematic net RST.

In the layout, terminal 'RST' of instance I64 probably should connect to net 
avC1_8 instead of net avC1_12.
This makes a better match between layout net avC1_8 and schematic net RST.

In the layout, terminal 'RST' of instance I65 probably should connect to net 
avC1_8 instead of net avC1_16.
This makes a better match between layout net avC1_8 and schematic net RST.

In the layout, terminal 'RST' of instance I62 probably should connect to net 
avC1_8 instead of net avC1_10.
This makes a better match between layout net avC1_8 and schematic net RST.


==============================================================[counter_full_PT]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC2_1
L        avC4_1

These layout nets should connect together:
L        avC5_3
L        avC5_4

These layout nets should connect together:
L        avC2_2
L        avC4_2
L        avC1_4

These layout nets should connect together:
L        avC10_16
L        avC3_16

These layout nets should connect together:
L        avC5_16
L        avC8_16

These layout nets should connect together:
L        avC57
L        avS11
L        avS10

These layout nets should connect together:
L        avC9_8
L        avC43

These layout nets should connect together:
L        avC59
L        avC2_20

These layout nets should connect together:
L        avC4_4
L        avC3_18

These layout nets should connect together:
L        avC3_4
L        avC4_5

==============================================================[counter_full_PT]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net016
S       1   of 2mux A
S       1   of 2mux OUT
S
S ?CLK
S       1   of 2mux A
S       1   of dff-standalone_PT CLK
S
S ?net015
S       1   of 2mux B
S       1   of dff-standalone_PT Q
S
S ?net013
S       1   of 2mux OUT
S       1   of dff_PT_odd CLK
S
S ?net019
S       1   of dff-standalone_PT QNOT
S       1   of dff-standalone_PT D
S
S ?CONT
S       1   of dff-standalone_PT CLK
S       1   of dff_PT_even CONT_OUT
S
S ?GSEL
S       6   of dff_PT_odd GSEL
S       6   of dff_PT_even GSEL
S
S ?net073
S       1   of dff_PT_even D
S       1   of dff_PT_even QNOT
S
S ?net076
S       1   of dff_PT_even Q
S       1   of dff_PT_even GAFT
S
S ?net058
S       1   of P_12_HSL130E {D S}
S       1   of N_12_HSL130E {D S}
S       1   of dff-standalone_PT CLK
S
S ?net046
S       1   of 2mux SEL
S       1   of dff-standalone_PT QNOT
S       1   of dff-standalone_PT D
S
S ?net023
S       1   of dff-standalone_PT D
S       1   of N_12_HSL130E:SerMos2#1 {OUT OUT2}
S       1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S
S ?net15
S       1   of dff_PT_odd D
S       1   of dff_PT_odd QNOT
S       1   of dff_PT_even !QPREV
S
S ?net17
S       1   of dff_PT_odd Q
S       1   of dff_PT_even CLK
S       1   of dff_PT_even QPREV
S
S ?net0142
S       1   of P_12_HSL130E G
S       1   of N_12_HSL130E G
S       1   of dff_PT_odd !CONT_OUT
S       1   of dff_PT_even !CONT_IN
S
S ?net037
S       1   of 2mux SEL
S       1   of dff-standalone_PT QNOT
S       1   of N_12_HSL130E:SerMos2#1 {IN1 IN2}
S       1   of P_12_HSL130E:ParMos2#1 {IN1 IN2}
S
S ?RST
S       3   of dff-standalone_PT RST
S       6   of dff_PT_odd RST
S       6   of dff_PT_even RST
S       1   of N_12_HSL130E:SerMos2#1 {IN1 IN2}
S       1   of P_12_HSL130E:ParMos2#1 {IN1 IN2}
S
S ?VDD
S       1   of P_12_HSL130E {D S}
S       1   of P_12_HSL130E B
S       2   of 2mux VDD
S       3   of dff-standalone_PT VDD
S       6   of dff_PT_odd VDD
S       1   of dff_PT_odd CONT_IN
S       1   of dff_PT_odd !QPREV
S       6   of dff_PT_even VDD
S       1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S       1   of P_12_HSL130E:ParMos2#1 TERM4
S
S ?GND
S       1   of N_12_HSL130E {D S}
S       1   of N_12_HSL130E B
S       2   of 2mux GND
S       1   of 2mux B
S       3   of dff-standalone_PT GND
S       6   of dff_PT_odd GND
S       1   of dff_PT_odd QPREV
S       6   of dff_PT_even GND
S       1   of N_12_HSL130E:SerMos2#1 {OUT OUT2}
S       1   of N_12_HSL130E:SerMos2#1 TERM4

==============================================================[counter_full_PT]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC4 ?avC2 ?avC5 ?avC3 ?avC7 ?avC6
L (total 6) with:
L       1   of p_12_hsl130e {D S}
L
L ?avS10 ?avS8 ?avS9
L (total 3) with:
L       1   of p_12_hsl130e G
L
L ?avC62 ?avC60 ?avC61
L (total 3) with:
L       1   of p_12_hsl130e B
L
L ?avC10 ?avC8 ?avC11 ?avC9 ?avC13 ?avC12
L (total 6) with:
L       1   of n_12_hsl130e {D S}
L
L ?avS11 ?avS6 ?avS7
L (total 3) with:
L       1   of n_12_hsl130e G
L
L ?avC6_4 ?avC6_5
L (total 2) with:
L       1   of 2mux VDD
L
L ?avC2_4 ?avC2_5
L (total 2) with:
L       1   of 2mux GND
L
L ?avC3_4 ?avC3_5
L (total 2) with:
L       1   of 2mux A
L
L ?avC5_4 ?avC5_5
L (total 2) with:
L       1   of 2mux B
L
L ?avC1_4 ?avC1_5
L (total 2) with:
L       1   of 2mux SEL
L
L ?avC4_4 ?avC4_5
L (total 2) with:
L       1   of 2mux OUT
L
L ?avC4_1 ?avC4_2 ?avC4_3
L (total 3) with:
L       1   of dff-standalone_PT QNOT
L
L ?avC3_1 ?avC3_2 ?avC3_3
L (total 3) with:
L       1   of dff-standalone_PT CLK
L
L ?avC2_1 ?avC2_2 ?avC2_3
L (total 3) with:
L       1   of dff-standalone_PT D
L
L ?avC5_3
L       1   of dff-standalone_PT Q
L
L ?avC1_1 ?avC1_2 ?avC1_3
L (total 3) with:
L       1   of dff-standalone_PT RST
L
L ?avC6_1 ?avC6_2 ?avC6_3
L (total 3) with:
L       1   of dff-standalone_PT GND
L
L ?avC7_1 ?avC7_2 ?avC7_3
L (total 3) with:
L       1   of dff-standalone_PT VDD
L
L ?avC2_20
L       1   of dff_PT_odd D
L
L ?avC3_18
L       1   of dff_PT_odd CLK
L
L ?avC1_26 ?avC1_28
L (total 2) with:
L       1   of dff_PT_odd GSEL
L
L ?avC10_16
L       1   of dff_PT_even D
L
L ?avC8_16
L       1   of dff_PT_even Q
L
L ?avC3_16
L       1   of dff_PT_even QNOT
L
L ?avC9_8
L       1   of dff_PT_even CLK
L
L ?avC1_6 ?avC1_8 ?avC1_10 ?avC1_12 ?avC1_14 ?avC1_16
L (total 6) with:
L       1   of dff_PT_even RST
L
L ?avC4_16
L       1   of dff_PT_even CONT_OUT
L
L ?avC12_14 ?avC12_16
L (total 2) with:
L       1   of dff_PT_even GSEL
L
L ?avC5_16
L       1   of dff_PT_even GAFT
L
L ?avC43
L       1   of dff_PT_odd Q
L       1   of dff_PT_even QPREV
L
L ?avC59
L       1   of dff_PT_odd QNOT
L       1   of dff_PT_even !QPREV
L
L ?GSEL
L       4   of dff_PT_odd GSEL
L       4   of dff_PT_even GSEL
L
L ?avC57
L       1   of dff_PT_odd !CONT_OUT
L       1   of dff_PT_even !CONT_IN
L
L ?avC15
L       6   of dff_PT_odd VDD
L       1   of dff_PT_odd CONT_IN
L       1   of dff_PT_odd !QPREV
L       6   of dff_PT_even VDD
L
L ?avC14
L       3   of n_12_hsl130e B
L       2   of 2mux ?avC8
L       6   of dff_PT_odd GND
L       1   of dff_PT_odd QPREV
L       6   of dff_PT_even GND

==============================================================[counter_full_PT]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: I63  dff_PT_odd
Layout Instance:    I63  dff_PT_odd

Pin        SchNet                      : LayNet
---        ------                      : ------
GSEL       GSEL                        : ?avC1_26

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: I59  dff_PT_odd
Layout Instance:    I59  dff_PT_odd

Pin        SchNet                      : LayNet
---        ------                      : ------
GSEL       GSEL                        : ?avC1_28

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: I65  dff_PT_even
Layout Instance:    I65  dff_PT_even

Pin        SchNet                      : LayNet
---        ------                      : ------
GSEL       GSEL                        : ?avC12_16

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: I60  dff_PT_even
Layout Instance:    I60  dff_PT_even

Pin        SchNet                      : LayNet
---        ------                      : ------
GSEL       GSEL                        : ?avC12_14

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: I58  dff_PT_even
Layout Instance:    I58  dff_PT_even

Pin        SchNet                      : LayNet
---        ------                      : ------
CLK        net17                       : ?avC9_8

==============================================================[counter_full_PT]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I66/PM0  P_12_HSL130E

S Pin        Net
S ---        ---
S D          net058
S G          net0142
S S          VDD
S B          VDD

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I66/NM0  N_12_HSL130E

S Pin        Net
S ---        ---
S D          net058
S G          net0142
S S          GND
S B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: I35  2mux

S Pin        Net
S ---        ---
S VDD        VDD
S GND        GND
S A          ?net016
S B          GND
S SEL        ?net046
S OUT        ?net013

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 4)
Schematic Instance: I41  2mux

S Pin        Net
S ---        ---
S VDD        VDD
S GND        GND
S A          ?CLK
S B          net015
S SEL        ?net037
S OUT        ?net016

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 5)
Schematic Instance: I68  dff-standalone_PT

S Pin        Net
S ---        ---
S QNOT       ?net019
S CLK        ?CLK
S D          ?net019
S Q          net015
S RST        ?RST
S GND        GND
S VDD        VDD

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 6)
Schematic Instance: I70  dff-standalone_PT

S Pin        Net
S ---        ---
S QNOT       ?net037
S CLK        net058
S D          net023
S Q          net03
S RST        ?RST
S GND        GND
S VDD        VDD

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 7)
Schematic Instance: I69  dff-standalone_PT

S Pin        Net
S ---        ---
S QNOT       ?net046
S CLK        CONT
S D          ?net046
S Q          net099
S RST        ?RST
S GND        GND
S VDD        VDD

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 8)
Schematic Instance: I##24  N_12_HSL130E:SerMos2#1

S Pin        Net
S ---        ---
S OUT        net023
S OUT2       GND
S TERM4      GND
S IN1        ?RST
S IN2        ?net037

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 9)
Schematic Instance: I##25  P_12_HSL130E:ParMos2#1

S Pin        Net
S ---        ---
S OUT        net023
S OUT2       VDD
S TERM4      VDD
S IN1        ?net037
S IN2        ?RST

==============================================================[counter_full_PT]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD1_1  n_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC10
L G          ?avS11
L S          ?avC8
L B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD1_2  n_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC11
L G          ?avS6
L S          ?avC9
L B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 3)
Layout Instance:    avD1_3  n_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC13
L G          ?avS7
L S          ?avC12
L B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 4)
Layout Instance:    avD2_1  p_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC4
L G          ?avS10
L S          ?avC2
L B          ?avC62

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 5)
Layout Instance:    avD2_2  p_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC5
L G          ?avS8
L S          ?avC3
L B          ?avC60

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 6)
Layout Instance:    avD2_3  p_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC7
L G          ?avS9
L S          ?avC6
L B          ?avC61

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 7)
Layout Instance:    I70  dff-standalone_PT

L Pin        Net
L ---        ---
L VDD        ?avC7_1
L GND        ?avC6_1
L CLK        net058
L D          net023
L Q          net03
L QNOT       ?avC4_1
L RST        ?avC1_1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 8)
Layout Instance:    I69  dff-standalone_PT

L Pin        Net
L ---        ---
L VDD        ?avC7_2
L GND        ?avC6_2
L CLK        ?avC3_2
L D          ?avC2_2
L Q          net099
L QNOT       ?avC4_2
L RST        ?avC1_2

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 9)
Layout Instance:    I68  dff-standalone_PT

L Pin        Net
L ---        ---
L VDD        ?avC7_3
L GND        ?avC6_3
L CLK        ?avC3_3
L D          ?avC2_3
L Q          ?avC5_3
L QNOT       ?avC4_3
L RST        ?avC1_3

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(layinst 10)
Layout Instance:    I41  2mux

L Pin        Net
L ---        ---
L VDD        ?avC6_4
L GND        ?avC2_4
L A          ?avC3_4
L B          ?avC5_4
L OUT        ?avC4_4
L SEL        ?avC1_4
L avC8       GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(layinst 11)
Layout Instance:    I35  2mux

L Pin        Net
L ---        ---
L VDD        ?avC6_5
L GND        ?avC2_5
L A          ?avC3_5
L B          ?avC5_5
L OUT        ?avC4_5
L SEL        ?avC1_5
L avC8       GND

==============================================================[counter_full_PT]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 2          -         Unmatched Pins
 1          1         Bad Initial Net Bindings
 8          8         Bad Matched Nets
 -          9         Suggested Terminal Rewire
 8          67        Unmatched Internal Nets
 -          10        Open Internal Nets
 5          5         Matched Instances with Bad Net Connections
 9          11        Unmatched Instances
 -          6         Open Instance Connections
 17         -         Unbound Pin

