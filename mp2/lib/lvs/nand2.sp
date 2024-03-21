* SPICE NETLIST
***************************************

.SUBCKT nand2 A vss! B Z vdd!
** N=6 EP=5 IP=0 FDC=4
M0 6 A vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 Z B 6 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 Z A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M3 vdd! B Z vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=1850 $D=0
.ENDS
***************************************
