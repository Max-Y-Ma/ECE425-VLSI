* SPICE NETLIST
***************************************

.SUBCKT nor2 A vdd! B Z vss!
** N=6 EP=5 IP=0 FDC=4
M0 Z A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 vss! B Z vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=690 $Y=600 $D=1
M2 6 A vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=310 $Y=1490 $D=0
M3 Z B 6 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.04e-14 PD=9.2e-07 PS=1e-06 $X=690 $Y=1490 $D=0
.ENDS
***************************************
