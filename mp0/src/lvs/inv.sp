* SPICE NETLIST
***************************************

.SUBCKT inv A vss! vdd! Z
** N=4 EP=4 IP=0 FDC=2
M0 Z A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 Z A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1450 $D=0
.ENDS
***************************************
