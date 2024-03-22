* SPICE NETLIST
***************************************

.SUBCKT trans vss! vdd! A G Gb Z
** N=6 EP=6 IP=0 FDC=2
M0 Z G A vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.2375e-14 PD=4.55e-07 PS=4.55e-07 $X=385 $Y=600 $D=1
M1 Z Gb A vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=2.475e-14 PD=6.35e-07 PS=6.35e-07 $X=385 $Y=1850 $D=0
.ENDS
***************************************
