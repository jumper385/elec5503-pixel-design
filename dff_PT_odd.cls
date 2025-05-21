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

Schematic and Layout Match
