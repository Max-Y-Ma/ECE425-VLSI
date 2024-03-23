* SPICE NETLIST
***************************************

.SUBCKT cmp rs1_rdata cmp_mux_out cmp_eq_in cmp_eq_out cmp_lt_in vss! cmp_lt_out vdd!
** N=22 EP=8 IP=0 FDC=32
M0 19 rs1_rdata vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=600 $D=1
M1 2 cmp_mux_out 19 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=600 $D=1
M2 5 rs1_rdata 4 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=1350 $Y=600 $D=1
M3 4 cmp_mux_out 5 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=2.52e-14 PD=6.75e-07 PS=6.4e-07 $X=1730 $Y=600 $D=1
M4 vss! 2 4 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=2.835e-14 PD=6.75e-07 PS=6.75e-07 $X=2145 $Y=600 $D=1
M5 20 cmp_eq_in vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.835e-14 PD=6.4e-07 PS=6.75e-07 $X=2560 $Y=600 $D=1
M6 11 5 20 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=2940 $Y=600 $D=1
M7 cmp_eq_out 11 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=3600 $Y=600 $D=1
M8 7 rs1_rdata vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=4260 $Y=600 $D=1
M9 vss! 8 7 vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=4640 $Y=600 $D=1
M10 8 cmp_mux_out vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5300 $Y=600 $D=1
M11 21 7 vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=5960 $Y=600 $D=1
M12 9 cmp_eq_in 21 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=6340 $Y=600 $D=1
M13 10 cmp_lt_in vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=7000 $Y=600 $D=1
M14 22 9 vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=7660 $Y=600 $D=1
M15 cmp_lt_out 10 22 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=8040 $Y=600 $D=1
M16 2 rs1_rdata vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M17 vdd! cmp_mux_out 2 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=690 $Y=1850 $D=0
M18 17 rs1_rdata vdd! vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.7e-14 PD=8.2e-07 PS=7.4e-07 $X=1350 $Y=1670 $D=0
M19 5 cmp_mux_out 17 vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.735e-14 AS=3.78e-14 PD=8.55e-07 PS=8.2e-07 $X=1730 $Y=1670 $D=0
M20 vdd! 2 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=3.735e-14 PD=6.75e-07 PS=8.55e-07 $X=2145 $Y=1850 $D=0
M21 11 cmp_eq_in vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.835e-14 PD=6.4e-07 PS=6.75e-07 $X=2560 $Y=1850 $D=0
M22 vdd! 5 11 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=2940 $Y=1850 $D=0
M23 cmp_eq_out 11 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=3600 $Y=1850 $D=0
M24 18 rs1_rdata vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=4260 $Y=1490 $D=0
M25 7 8 18 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.04e-14 PD=9.2e-07 PS=1e-06 $X=4640 $Y=1490 $D=0
M26 8 cmp_mux_out vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5300 $Y=1850 $D=0
M27 9 7 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=5960 $Y=1850 $D=0
M28 vdd! cmp_eq_in 9 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=6340 $Y=1850 $D=0
M29 10 cmp_lt_in vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=7000 $Y=1850 $D=0
M30 cmp_lt_out 9 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=7660 $Y=1850 $D=0
M31 vdd! 10 cmp_lt_out vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=8040 $Y=1850 $D=0
.ENDS
***************************************
