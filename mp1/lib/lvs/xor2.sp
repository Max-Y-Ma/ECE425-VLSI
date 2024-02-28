* SPICE NETLIST
***************************************

.SUBCKT xor2 A B vdd! Z vss!
** N=9 EP=5 IP=0 FDC=10
M0 2 A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 vss! B 2 vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=690 $Y=600 $D=1
M2 9 A vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=1355 $Y=600 $D=1
M3 Z B 9 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1735 $Y=600 $D=1
M4 vss! 2 Z vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=2.295e-14 PD=3.8e-07 PS=6.65e-07 $X=2140 $Y=600 $D=1
M5 8 A vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=310 $Y=1695 $D=0
M6 2 B 8 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.04e-14 PD=9.2e-07 PS=1e-06 $X=690 $Y=1695 $D=0
M7 vdd! A 4 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=1355 $Y=1695 $D=0
M8 4 B vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.49e-14 AS=5.04e-14 PD=1.025e-06 PS=1e-06 $X=1735 $Y=1695 $D=0
M9 Z 2 4 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.49e-14 PD=9.2e-07 PS=1.025e-06 $X=2140 $Y=1695 $D=0
.ENDS
***************************************
