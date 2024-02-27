* SPICE NETLIST
***************************************

.SUBCKT aoi21 A B vdd! C Z vss!
** N=8 EP=6 IP=0 FDC=6
M0 8 A vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 Z B 8 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 vss! C Z vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=2.295e-14 PD=3.8e-07 PS=6.65e-07 $X=1095 $Y=600 $D=1
M3 vdd! A 1 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=310 $Y=1695 $D=0
M4 1 B vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.49e-14 AS=5.04e-14 PD=1.025e-06 PS=1e-06 $X=690 $Y=1695 $D=0
M5 Z C 1 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.49e-14 PD=9.2e-07 PS=1.025e-06 $X=1095 $Y=1695 $D=0
.ENDS
***************************************
