* SPICE NETLIST
***************************************

.SUBCKT xnor2 A B Z vss! vdd!
** N=9 EP=5 IP=0 FDC=10
M0 9 A vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 2 B 9 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 Z A 4 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=1350 $Y=600 $D=1
M3 4 B Z vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=2.52e-14 PD=6.75e-07 PS=6.4e-07 $X=1730 $Y=600 $D=1
M4 vss! 2 4 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=2.835e-14 PD=5.65e-07 PS=6.75e-07 $X=2145 $Y=600 $D=1
M5 2 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M6 vdd! B 2 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=1850 $D=0
M7 8 A vdd! vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.7e-14 PD=8.2e-07 PS=7.4e-07 $X=1350 $Y=1670 $D=0
M8 Z B 8 vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.735e-14 AS=3.78e-14 PD=8.55e-07 PS=8.2e-07 $X=1730 $Y=1670 $D=0
M9 vdd! 2 Z vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=3.735e-14 PD=5.65e-07 PS=8.55e-07 $X=2145 $Y=1850 $D=0
.ENDS
***************************************
