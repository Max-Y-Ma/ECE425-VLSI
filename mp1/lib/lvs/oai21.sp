* SPICE NETLIST
***************************************

.SUBCKT oai21 A B Z C vss! vdd!
** N=8 EP=6 IP=0 FDC=6
M0 Z A 1 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 1 B Z vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=2.52e-14 PD=6.75e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 vss! C 1 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=2.835e-14 PD=5.65e-07 PS=6.75e-07 $X=1105 $Y=600 $D=1
M3 8 A vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=310 $Y=1695 $D=0
M4 Z B 8 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=4.635e-14 AS=5.04e-14 PD=1.035e-06 PS=1e-06 $X=690 $Y=1695 $D=0
M5 vdd! C Z vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=4.635e-14 PD=5.65e-07 PS=1.035e-06 $X=1105 $Y=2055 $D=0
.ENDS
***************************************
