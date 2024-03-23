* SPICE NETLIST
***************************************

.SUBCKT alu alu_cin alu_mux_1_out alu_mux_2_out alu_cout alu_op<0> alu_op<1> vss! vdd! alu_out
** N=32 EP=9 IP=0 FDC=62
M0 2 alu_cin vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 vss! 4 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=970 $Y=600 $D=1
M2 6 alu_mux_1_out vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=1350 $Y=600 $D=1
M3 4 6 alu_cin vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=2085 $Y=600 $D=1
M4 2 alu_mux_1_out 4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=2605 $Y=600 $D=1
M5 7 3 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=3340 $Y=600 $D=1
M6 alu_cout 7 alu_mux_2_out vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=4075 $Y=600 $D=1
M7 alu_mux_1_out 3 alu_cout vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=4595 $Y=600 $D=1
M8 10 alu_cout vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5330 $Y=600 $D=1
M9 11 3 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=5990 $Y=600 $D=1
M10 12 11 10 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=6725 $Y=600 $D=1
M11 alu_mux_2_out 3 12 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=7245 $Y=600 $D=1
M12 13 alu_mux_1_out vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=7980 $Y=600 $D=1
M13 vss! alu_mux_2_out 13 vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=8360 $Y=600 $D=1
M14 14 12 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=9020 $Y=600 $D=1
M15 31 alu_mux_1_out vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=9680 $Y=600 $D=1
M16 15 alu_mux_2_out 31 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=10060 $Y=600 $D=1
M17 32 alu_mux_1_out vss! vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=10720 $Y=600 $D=1
M18 16 alu_mux_2_out 32 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=11100 $Y=600 $D=1
M19 18 alu_mux_1_out 17 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=11760 $Y=600 $D=1
M20 17 alu_mux_2_out 18 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.835e-14 AS=2.52e-14 PD=6.75e-07 PS=6.4e-07 $X=12140 $Y=600 $D=1
M21 vss! 16 17 vss! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=2.835e-14 PD=5.65e-07 PS=6.75e-07 $X=12555 $Y=600 $D=1
M22 20 alu_op<0> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=13220 $Y=600 $D=1
M23 21 20 13 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=13955 $Y=600 $D=1
M24 15 alu_op<0> 21 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=14475 $Y=600 $D=1
M25 22 20 14 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=15285 $Y=600 $D=1
M26 18 alu_op<0> 22 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=15805 $Y=600 $D=1
M27 24 alu_op<1> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=16540 $Y=600 $D=1
M28 25 24 22 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=17275 $Y=600 $D=1
M29 21 alu_op<1> 25 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=17795 $Y=600 $D=1
M30 alu_out 25 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=18530 $Y=600 $D=1
M31 2 alu_cin vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M32 vdd! 4 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=970 $Y=1850 $D=0
M33 6 alu_mux_1_out vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=1350 $Y=1850 $D=0
M34 4 alu_mux_1_out alu_cin vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=2085 $Y=1850 $D=0
M35 2 6 4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=2605 $Y=1850 $D=0
M36 7 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=3340 $Y=1850 $D=0
M37 alu_cout 3 alu_mux_2_out vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=4075 $Y=1850 $D=0
M38 alu_mux_1_out 7 alu_cout vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=4595 $Y=1850 $D=0
M39 10 alu_cout vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5330 $Y=1850 $D=0
M40 11 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=5990 $Y=1850 $D=0
M41 12 3 10 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=6725 $Y=1850 $D=0
M42 alu_mux_2_out 11 12 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=7245 $Y=1850 $D=0
M43 29 alu_mux_1_out vdd! vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=5.04e-14 AS=3.6e-14 PD=1e-06 PS=9.2e-07 $X=7980 $Y=1490 $D=0
M44 13 alu_mux_2_out 29 vdd! PMOS_VTL L=5e-08 W=3.6e-07 AD=3.6e-14 AS=5.04e-14 PD=9.2e-07 PS=1e-06 $X=8360 $Y=1490 $D=0
M45 14 12 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=9020 $Y=1850 $D=0
M46 15 alu_mux_1_out vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=9680 $Y=1850 $D=0
M47 vdd! alu_mux_2_out 15 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=10060 $Y=1850 $D=0
M48 16 alu_mux_1_out vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=10720 $Y=1850 $D=0
M49 vdd! alu_mux_2_out 16 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=11100 $Y=1850 $D=0
M50 30 alu_mux_1_out vdd! vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.7e-14 PD=8.2e-07 PS=7.4e-07 $X=11760 $Y=1670 $D=0
M51 18 alu_mux_2_out 30 vdd! PMOS_VTL L=5e-08 W=2.7e-07 AD=3.735e-14 AS=3.78e-14 PD=8.55e-07 PS=8.2e-07 $X=12140 $Y=1670 $D=0
M52 vdd! 16 18 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.845e-14 AS=3.735e-14 PD=5.65e-07 PS=8.55e-07 $X=12555 $Y=1850 $D=0
M53 20 alu_op<0> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=13220 $Y=1850 $D=0
M54 21 alu_op<0> 13 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=13955 $Y=1850 $D=0
M55 15 20 21 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=14475 $Y=1850 $D=0
M56 22 alu_op<0> 14 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=15285 $Y=1850 $D=0
M57 18 20 22 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=15805 $Y=1850 $D=0
M58 24 alu_op<1> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=16540 $Y=1850 $D=0
M59 25 alu_op<1> 22 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=17275 $Y=1850 $D=0
M60 21 24 25 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=17795 $Y=1850 $D=0
M61 alu_out 25 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=18530 $Y=1850 $D=0
.ENDS
***************************************
