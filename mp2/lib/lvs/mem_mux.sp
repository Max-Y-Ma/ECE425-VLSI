* SPICE NETLIST
***************************************

.SUBCKT mem_mux mem_mux_sel<0> mem_mux_sel<1> mem_mux_sel<2> lw lb lh lbu lhu vss! vdd! mem_mux_out
** N=19 EP=11 IP=0 FDC=28
M0 2 mem_mux_sel<0> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 3 2 lw vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1045 $Y=600 $D=1
M2 vss! mem_mux_sel<0> 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=1565 $Y=600 $D=1
M3 4 2 lb vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=2375 $Y=600 $D=1
M4 lh mem_mux_sel<0> 4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=2895 $Y=600 $D=1
M5 5 2 lbu vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=3705 $Y=600 $D=1
M6 lhu mem_mux_sel<0> 5 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=4225 $Y=600 $D=1
M7 8 6 5 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.2375e-14 PD=4.55e-07 PS=4.55e-07 $X=5035 $Y=600 $D=1
M8 6 mem_mux_sel<1> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5770 $Y=600 $D=1
M9 9 6 4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=6505 $Y=600 $D=1
M10 3 mem_mux_sel<1> 9 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=7025 $Y=600 $D=1
M11 11 mem_mux_sel<2> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=7760 $Y=600 $D=1
M12 mem_mux_out 11 9 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=8495 $Y=600 $D=1
M13 8 mem_mux_sel<2> mem_mux_out vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=9015 $Y=600 $D=1
M14 2 mem_mux_sel<0> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M15 3 mem_mux_sel<0> lw vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1045 $Y=1850 $D=0
M16 vss! 2 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=1565 $Y=1850 $D=0
M17 4 mem_mux_sel<0> lb vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=2375 $Y=1850 $D=0
M18 lh 2 4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=2895 $Y=1850 $D=0
M19 5 mem_mux_sel<0> lbu vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=3705 $Y=1850 $D=0
M20 lhu 2 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=4225 $Y=1850 $D=0
M21 8 mem_mux_sel<1> 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=2.475e-14 PD=6.35e-07 PS=6.35e-07 $X=5035 $Y=1850 $D=0
M22 6 mem_mux_sel<1> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5770 $Y=1850 $D=0
M23 9 mem_mux_sel<1> 4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=6505 $Y=1850 $D=0
M24 3 6 9 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=7025 $Y=1850 $D=0
M25 11 mem_mux_sel<2> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=7760 $Y=1850 $D=0
M26 mem_mux_out mem_mux_sel<2> 9 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=8495 $Y=1850 $D=0
M27 8 11 mem_mux_out vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=9015 $Y=1850 $D=0
.ENDS
***************************************
