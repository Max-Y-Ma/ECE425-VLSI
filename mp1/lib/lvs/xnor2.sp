* SPICE NETLIST
***************************************

.SUBCKT xnor2 A B vdd! Z vss!
** N=10 EP=5 IP=0 FDC=12
M0 2 A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 4 B vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=970 $Y=600 $D=1
M2 9 B vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=1630 $Y=600 $D=1
M3 Z 2 9 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=3.15e-14 AS=2.52e-14 PD=7.1e-07 PS=6.4e-07 $X=2010 $Y=600 $D=1
M4 10 A Z vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=3.15e-14 PD=6.4e-07 PS=7.1e-07 $X=2460 $Y=600 $D=1
M5 vss! 4 10 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=2840 $Y=600 $D=1
M6 2 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=2055 $D=0
M7 4 B vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=970 $Y=2055 $D=0
M8 vdd! B 5 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=1630 $Y=1695 $D=0
M9 5 2 vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=6.3e-14 AS=5.04e-14 PD=1.07e-06 PS=1e-06 $X=2010 $Y=1695 $D=0
M10 Z A 5 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=6.3e-14 PD=1e-06 PS=1.07e-06 $X=2460 $Y=1695 $D=0
M11 5 4 Z vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.04e-14 PD=9.2e-07 PS=1e-06 $X=2840 $Y=1695 $D=0
.ENDS
***************************************
