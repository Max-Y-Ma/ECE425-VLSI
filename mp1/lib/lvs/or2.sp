* SPICE NETLIST
***************************************

.SUBCKT or2 A B vss! vdd! Z
** N=7 EP=5 IP=0 FDC=6
M0 2 A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 vss! B 2 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.4175e-14 AS=1.26e-14 PD=4.95e-07 PS=4.6e-07 $X=690 $Y=600 $D=1
M2 Z 2 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9.225e-15 AS=1.4175e-14 PD=3.85e-07 PS=4.95e-07 $X=1105 $Y=600 $D=1
M3 7 A 2 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=310 $Y=1695 $D=0
M4 vdd! B 7 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=4.635e-14 AS=5.04e-14 PD=1.035e-06 PS=1e-06 $X=690 $Y=1695 $D=0
M5 Z 2 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=4.635e-14 PD=5.65e-07 PS=1.035e-06 $X=1105 $Y=2055 $D=0
.ENDS
***************************************
