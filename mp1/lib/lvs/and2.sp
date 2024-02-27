* SPICE NETLIST
***************************************

.SUBCKT and2 A B vss! vdd! Z
** N=7 EP=5 IP=0 FDC=6
M0 7 A 3 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 vss! B 7 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.295e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 Z 3 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=2.295e-14 PD=3.8e-07 PS=6.65e-07 $X=1095 $Y=600 $D=1
M3 3 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=2055 $D=0
M4 vdd! B 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=690 $Y=2055 $D=0
M5 Z 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.745e-14 PD=5.6e-07 PS=6.65e-07 $X=1095 $Y=2055 $D=0
.ENDS
***************************************
