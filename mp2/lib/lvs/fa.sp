* SPICE NETLIST
***************************************

.SUBCKT fa Cin A B Cout vss! vdd! Sum
** N=14 EP=7 IP=0 FDC=24
M0 2 Cin vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 vss! 4 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=970 $Y=600 $D=1
M2 6 A vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=1350 $Y=600 $D=1
M3 4 6 Cin vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=2085 $Y=600 $D=1
M4 2 A 4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=2605 $Y=600 $D=1
M5 7 3 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=3340 $Y=600 $D=1
M6 Cout 7 B vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=4075 $Y=600 $D=1
M7 A 3 Cout vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=4595 $Y=600 $D=1
M8 10 Cout vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5330 $Y=600 $D=1
M9 11 3 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5990 $Y=600 $D=1
M10 Sum 11 10 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=6725 $Y=600 $D=1
M11 B 3 Sum vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=7245 $Y=600 $D=1
M12 2 Cin vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M13 vdd! 4 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=970 $Y=1850 $D=0
M14 6 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=1350 $Y=1850 $D=0
M15 4 A Cin vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=2085 $Y=1850 $D=0
M16 2 6 4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=2605 $Y=1850 $D=0
M17 7 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=3340 $Y=1850 $D=0
M18 Cout 3 B vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=4075 $Y=1850 $D=0
M19 A 7 Cout vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=4595 $Y=1850 $D=0
M20 10 Cout vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5330 $Y=1850 $D=0
M21 11 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5990 $Y=1850 $D=0
M22 Sum 3 10 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=6725 $Y=1850 $D=0
M23 B 11 Sum vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=7245 $Y=1850 $D=0
.ENDS
***************************************
