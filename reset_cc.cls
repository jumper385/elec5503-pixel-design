*******************************************************************************
****** reset_cc schematic pixel  <vs>  reset_cc layout pixel
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(P_12_HSL130E, p_12_hsl130e) MOS                  2       2
                                             ------  ------
Total                                             2       2

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(P_12_HSL130E, p_12_hsl130e) MOS                  2       2           0       0
(P_12_HSL130E:ParMos2#1, -) MosBlk                -       -           1       -*
(-, p_12_hsl130e:SerMos2#1) MosBlk                -       -           -       1*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(P_12_HSL130E, p_12_hsl130e) MOS                  0       0           0       0
(P_12_HSL130E:ParMos2#1, -) MosBlk                1       -*          1       -*
(-, p_12_hsl130e:SerMos2#1) MosBlk                -       1*          -       1*
                                             ------  ------      ------  ------
Total                                             1       1           1       1

Match Statistics for Nets                         4       4           0       0

=====================================================================[reset_cc]
====== Unbound Pin ============================================================
===============================================================================

S GR
S ASR
S VDD
S VN

=====================================================================[reset_cc]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  GR
S      *1   of P_12_HSL130E:ParMos2#1 {IN1 IN2}

Layout Net:  avC3
L      *2   of p_12_hsl130e:SerMos2#1 ?{OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  ASR
S      *1   of P_12_HSL130E:ParMos2#1 {IN1 IN2}

Layout Net:  avC1
L      *1   of p_12_hsl130e:SerMos2#1 ?{IN1 IN2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  VDD
S      *1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S      *1   of P_12_HSL130E:ParMos2#1 TERM4

Layout Net:  avC7
L      *1   of p_12_hsl130e:SerMos2#1 ?TERM4

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 4)
Schematic Net:  VN
S      *1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}

Layout Net:  avC2
L      *1   of p_12_hsl130e:SerMos2#1 ?{IN1 IN2}

=====================================================================[reset_cc]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?VN
S       1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S
S ?GR ?ASR
S (total 2) with:
S       1   of P_12_HSL130E:ParMos2#1 {IN1 IN2}
S
S ?VDD
S       1   of P_12_HSL130E:ParMos2#1 {OUT OUT2}
S       1   of P_12_HSL130E:ParMos2#1 TERM4

=====================================================================[reset_cc]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC3
L       2   of p_12_hsl130e:SerMos2#1 ?{OUT OUT2}
L
L ?avC7
L       1   of p_12_hsl130e:SerMos2#1 ?TERM4
L
L ?avC1 ?avC2
L (total 2) with:
L       1   of p_12_hsl130e:SerMos2#1 ?{IN1 IN2}

=====================================================================[reset_cc]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I##3  P_12_HSL130E:ParMos2#1

S Pin        Net
S ---        ---
S OUT        VDD
S OUT2       VN
S TERM4      VDD
S IN1        ASR
S IN2        GR

=====================================================================[reset_cc]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##3  p_12_hsl130e:SerMos2#1

L Pin        Net
L ---        ---
L OUT        GR
L OUT2       GR
L TERM4      VDD
L IN1        ASR
L IN2        VN

=====================================================================[reset_cc]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 4          4         Bad Matched Nets
 1          1         Unmatched Instances
 4          -         Unbound Pin

