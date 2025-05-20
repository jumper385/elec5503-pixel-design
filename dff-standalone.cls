*******************************************************************************
****** dff-standalone schematic pixel  <vs>  dff-standalone layout pixel
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(P_12_HSL130E, p_12_hsl130e) MOS                  1      12*
(txgate schematic pixel, _) Cell                  4       0*
(inverter schematic pixel, _) Cell                7       0*
(N_12_HSL130E, n_12_hsl130e) MOS                  1      12*
                                             ------  ------
Total                                            13      24

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(N_12_HSL130E, n_12_hsl130e) MOS                 12      12          12      12
(P_12_HSL130E, p_12_hsl130e) MOS                 12      12          12      12

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(N_12_HSL130E, n_12_hsl130e) MOS                 12      12           2       2
(P_12_HSL130E, p_12_hsl130e) MOS                 12      12           0       0
                                             ------  ------      ------  ------
Total                                            24      24           2       2

Match Statistics for Nets                        14      20           2       8

===============================================================[dff-standalone]
====== Unbound Pin ============================================================
===============================================================================

S QNOT
S CLK
S D
S Q
S RST
S GND
S VDD

===============================================================[dff-standalone]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?net81
S ?CLK_P

L ?avC15
L ?avC13
L ?avC14
L ?avS11
L ?avC8
L ?avS1
L ?avC9
L ?avC10

===============================================================[dff-standalone]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  QNOT
S       2   of N_12_HSL130E {D S}
S       2   of P_12_HSL130E {D S}

Layout Net:  avC2
L      *1   of n_12_hsl130e {D S}
L      *1   of n_12_hsl130e G
L      *1   of p_12_hsl130e {D S}
L      *1   of p_12_hsl130e G

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  GND
S      *8   of N_12_HSL130E {D S}
S       12  of N_12_HSL130E B

Layout Net:  avC17
L       12  of n_12_hsl130e B

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  VDD
S      *8   of P_12_HSL130E {D S}
S       12  of P_12_HSL130E B

Layout Net:  avC18
L       12  of p_12_hsl130e B

===============================================================[dff-standalone]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'D' of instance avD1_4 probably should connect to net 
avC17 instead of net avC13.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'D' of instance avD1_8 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'D' of instance avD1_2 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'S' of instance avD1_3 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'S' of instance avD1_7 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'S' of instance avD1_11 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'D' of instance avD1_10 probably should connect to net 
avC17 instead of net avC15.
This makes a better match between layout net avC17 and schematic net GND.

In the layout, terminal 'D' of instance avD2_8 probably should connect to net 
avC18 instead of net avC9.
This makes a better match between layout net avC18 and schematic net VDD.

In the layout, terminal 'D' of instance avD2_2 probably should connect to net 
avC18 instead of net avC9.
This makes a better match between layout net avC18 and schematic net VDD.

In the layout, terminal 'S' of instance avD2_3 probably should connect to net 
avC18 instead of net avC9.
This makes a better match between layout net avC18 and schematic net VDD.

In the layout, terminal 'S' of instance avD2_7 probably should connect to net 
avC18 instead of net avC9.
This makes a better match between layout net avC18 and schematic net VDD.

In the layout, terminal 'S' of instance avD2_11 probably should connect to net 
avC18 instead of net avC9.
This makes a better match between layout net avC18 and schematic net VDD.

In the layout, terminal 'D' of instance avD2_4 probably should connect to net 
avC8 instead of net avC13.
This makes a better match between layout net avC8 and schematic net net81.

In the layout, terminal 'G' of instance avD2_4 probably should connect to net 
avS1 instead of net avS11.
This makes a better match between layout net avS1 and schematic net CLK_P.

In the layout, terminal 'D' of instance avD1_4 probably should connect to net 
avS1 instead of net avC13.
This makes a better match between layout net avS1 and schematic net CLK_P.


===============================================================[dff-standalone]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC13
L        avS11
L        avC10

These layout nets should connect together:
L        avC2
L        avC8
L        avS1

===============================================================[dff-standalone]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?QNOT
S       2   of N_12_HSL130E {D S}
S       2   of P_12_HSL130E {D S}
S
S ?GND
S       8   of N_12_HSL130E {D S}
S       12  of N_12_HSL130E B
S
S ?VDD
S       8   of P_12_HSL130E {D S}
S       12  of P_12_HSL130E B
S
S ?CLK_P
S       1   of N_12_HSL130E {D S}
S       3   of N_12_HSL130E G
S       1   of P_12_HSL130E {D S}
S       3   of P_12_HSL130E G
S
S ?net81
S       2   of N_12_HSL130E {D S}
S       1   of N_12_HSL130E G
S       3   of P_12_HSL130E {D S}
S       1   of P_12_HSL130E G

===============================================================[dff-standalone]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC15
L       8   of n_12_hsl130e {D S}
L
L ?avC17
L       12  of n_12_hsl130e B
L
L ?avC10
L       1   of p_12_hsl130e {D S}
L
L ?avC9
L       8   of p_12_hsl130e {D S}
L
L ?avC18
L       12  of p_12_hsl130e B
L
L ?avC13 ?avC14
L (total 2) with:
L       2   of n_12_hsl130e {D S}
L       2   of p_12_hsl130e {D S}
L
L ?avS11 ?avC8 ?avS1
L (total 3) with:
L       1   of n_12_hsl130e G
L       1   of p_12_hsl130e G
L
L ?avC2
L       1   of n_12_hsl130e {D S}
L       1   of n_12_hsl130e G
L       1   of p_12_hsl130e {D S}
L       1   of p_12_hsl130e G

===============================================================[dff-standalone]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: NM0  N_12_HSL130E
Layout Instance:    avD1_10  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net79                       : ?avC15
S          GND                         : net79

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: PM0  P_12_HSL130E
Layout Instance:    avD2_10  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          ?net81                      : ?avC9
S          VDD                         : ?avC10

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: I12/NM0  N_12_HSL130E
Layout Instance:    avD1_11  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net92                       : net92
S          GND                         : ?avC15

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: I12/PM0  P_12_HSL130E
Layout Instance:    avD2_11  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net92                       : net92
S          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: I8/NM0  N_12_HSL130E
Layout Instance:    avD1_7  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          Q                           : Q
S          GND                         : ?avC15

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 6)
Schematic Instance: I8/PM0  P_12_HSL130E
Layout Instance:    avD2_7  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          Q                           : Q
S          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 7)
Schematic Instance: I1/NM0  N_12_HSL130E
Layout Instance:    avD1_3  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net80                       : net80
S          GND                         : ?avC15

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 8)
Schematic Instance: I1/PM0  P_12_HSL130E
Layout Instance:    avD2_3  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net80                       : net80
S          VDD                         : ?avC9

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 9)
Schematic Instance: I6/NM0  N_12_HSL130E
Layout Instance:    avD1_6  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          QNOT                        : ?avC15
S          GND                         : ?avC14

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 10)
Schematic Instance: I6/PM0  P_12_HSL130E
Layout Instance:    avD2_6  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          QNOT                        : ?avC9
S          VDD                         : ?avC14

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 11)
Schematic Instance: I3/NM0  N_12_HSL130E
Layout Instance:    avD1_2  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net86                       : ?avC15
S          GND                         : net86

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 12)
Schematic Instance: I3/PM0  P_12_HSL130E
Layout Instance:    avD2_2  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net86                       : ?avC9
S          VDD                         : net86

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 13)
Schematic Instance: I10/NM0  N_12_HSL130E
Layout Instance:    avD1_8  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          CLK_N                       : ?avC15
S          GND                         : CLK_N

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 14)
Schematic Instance: I10/PM0  P_12_HSL130E
Layout Instance:    avD2_8  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          CLK_N                       : ?avC9
S          VDD                         : CLK_N

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 15)
Schematic Instance: I9/NM0  N_12_HSL130E
Layout Instance:    avD1_4  n_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          ?CLK_P                      : ?avC13
S          GND                         : net80

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 16)
Schematic Instance: I9/PM0  P_12_HSL130E
Layout Instance:    avD2_5  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
D          ?CLK_P                      : ?avC14
S          VDD                         : ?avC13

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badcon 17)
Schematic Instance: I2/PM0  P_12_HSL130E
Layout Instance:    avD2_12  p_12_hsl130e

Pin        SchNet                      : LayNet
---        ------                      : ------
G          CLK_N                       : QNOT

===============================================================[dff-standalone]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I5/NM0  N_12_HSL130E

S Pin        Net
S ---        ---
S D          net80
S G          CLK_N
S S          ?net81
S B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I4/NM0  N_12_HSL130E

S Pin        Net
S ---        ---
S D          net86
S G          CLK_N
S S          net79
S B          GND

===============================================================[dff-standalone]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD1_1  n_12_hsl130e

L Pin        Net
L ---        ---
L D          net86
L G          QNOT
L S          net79
L B          GND

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD1_5  n_12_hsl130e

L Pin        Net
L ---        ---
L D          ?avC14
L G          ?avS11
L S          ?avC13
L B          GND

===============================================================[dff-standalone]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 3          3         Bad Matched Nets
 -          15        Suggested Terminal Rewire
 2          8         Unmatched Internal Nets
 -          2         Open Internal Nets
 17         17        Matched Instances with Bad Net Connections
 2          2         Unmatched Instances
 7          -         Unbound Pin

