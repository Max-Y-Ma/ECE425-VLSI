* SPICE NETLIST
***************************************

.SUBCKT pc pc_mux_sel rst clk pcp4 alu_out pc_reset_value pc vss! vdd!
** N=25 EP=9 IP=0 FDC=42
M0 2 pc_mux_sel vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 3 2 pcp4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1045 $Y=600 $D=1
M2 alu_out pc_mux_sel 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=1565 $Y=600 $D=1
M3 5 rst vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=2300 $Y=600 $D=1
M4 6 5 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=3035 $Y=600 $D=1
M5 pc_reset_value rst 6 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=3555 $Y=600 $D=1
M6 8 clk vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=4290 $Y=600 $D=1
M7 vss! 8 9 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=4950 $Y=600 $D=1
M8 10 clk vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=5330 $Y=600 $D=1
M9 11 8 6 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.2375e-14 PD=4.55e-07 PS=4.55e-07 $X=6065 $Y=600 $D=1
M10 vss! 11 20 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=6800 $Y=600 $D=1
M11 12 20 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.5525e-14 AS=1.26e-14 PD=5.25e-07 PS=4.6e-07 $X=7180 $Y=600 $D=1
M12 11 9 12 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.5525e-14 PD=4.55e-07 PS=5.25e-07 $X=7625 $Y=600 $D=1
M13 13 clk 12 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.2375e-14 PD=4.55e-07 PS=4.55e-07 $X=8435 $Y=600 $D=1
M14 vss! 15 14 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=9170 $Y=600 $D=1
M15 15 clk vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=9550 $Y=600 $D=1
M16 21 13 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.5525e-14 AS=9e-15 PD=5.25e-07 PS=3.8e-07 $X=10210 $Y=600 $D=1
M17 16 14 21 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.5525e-14 PD=4.55e-07 PS=5.25e-07 $X=10655 $Y=600 $D=1
M18 vss! 16 pc vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=11390 $Y=600 $D=1
M19 25 pc vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=1.26e-14 PD=4.6e-07 PS=4.6e-07 $X=11770 $Y=600 $D=1
M20 16 15 25 vss! NMOS_VTL L=5e-08 W=9e-08 AD=2.4975e-14 AS=1.26e-14 PD=7.35e-07 PS=4.6e-07 $X=12150 $Y=600 $D=1
M21 2 pc_mux_sel vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M22 3 pc_mux_sel pcp4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1045 $Y=1850 $D=0
M23 alu_out 2 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=1565 $Y=1850 $D=0
M24 5 rst vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=2300 $Y=1850 $D=0
M25 6 rst 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=3035 $Y=1850 $D=0
M26 pc_reset_value 5 6 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=3555 $Y=1850 $D=0
M27 8 clk vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=4290 $Y=1850 $D=0
M28 vdd! 8 9 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=4950 $Y=1850 $D=0
M29 10 clk vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=5330 $Y=1850 $D=0
M30 11 9 6 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=2.475e-14 PD=6.35e-07 PS=6.35e-07 $X=6065 $Y=1850 $D=0
M31 vdd! 11 20 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=6800 $Y=1850 $D=0
M32 12 20 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.105e-14 AS=2.52e-14 PD=7.05e-07 PS=6.4e-07 $X=7180 $Y=1850 $D=0
M33 11 8 12 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.105e-14 PD=6.35e-07 PS=7.05e-07 $X=7625 $Y=1850 $D=0
M34 13 10 12 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=2.475e-14 PD=6.35e-07 PS=6.35e-07 $X=8435 $Y=1850 $D=0
M35 vdd! 15 14 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=9170 $Y=1850 $D=0
M36 15 clk vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=9550 $Y=1850 $D=0
M37 21 13 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.105e-14 AS=1.8e-14 PD=7.05e-07 PS=5.6e-07 $X=10210 $Y=1850 $D=0
M38 16 15 21 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.105e-14 PD=6.35e-07 PS=7.05e-07 $X=10655 $Y=1850 $D=0
M39 vdd! 16 pc vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=11390 $Y=1850 $D=0
M40 25 pc vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=5.58e-14 AS=2.52e-14 PD=9.8e-07 PS=6.4e-07 $X=11770 $Y=1850 $D=0
M41 16 14 25 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=5.58e-14 PD=5.75e-07 PS=9.8e-07 $X=12490 $Y=1850 $D=0
.ENDS
***************************************
