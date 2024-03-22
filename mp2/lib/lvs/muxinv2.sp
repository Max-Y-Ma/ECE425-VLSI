* SPICE NETLIST
***************************************

.SUBCKT muxinv2 S0 Z vdd! vss! A B
** N=8 EP=6 IP=0 FDC=8
M0 vss! 1 Z vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 3 S0 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=690 $Y=600 $D=1
M2 1 3 A vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1425 $Y=600 $D=1
M3 B S0 1 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=1945 $Y=600 $D=1
M4 vdd! 1 Z vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M5 3 S0 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=1850 $D=0
M6 1 S0 A vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1425 $Y=1850 $D=0
M7 B 3 1 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=1945 $Y=1850 $D=0
.ENDS
***************************************
