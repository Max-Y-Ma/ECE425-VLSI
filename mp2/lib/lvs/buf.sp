* SPICE NETLIST
***************************************

.SUBCKT buf A vss! vdd! Z
** N=5 EP=4 IP=0 FDC=4
M0 vss! A 2 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 Z 2 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=690 $Y=600 $D=1
M2 vdd! A 2 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M3 Z 2 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=1850 $D=0
.ENDS
***************************************
