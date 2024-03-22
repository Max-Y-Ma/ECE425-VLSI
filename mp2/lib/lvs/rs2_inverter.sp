* SPICE NETLIST
***************************************

.SUBCKT rs2_inverter alu_inv_rs2 rs2_rdata rs2_after_inv vss! vdd!
** N=7 EP=5 IP=0 FDC=8
M0 2 alu_inv_rs2 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 rs2_after_inv 2 rs2_rdata vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1045 $Y=600 $D=1
M2 5 alu_inv_rs2 rs2_after_inv vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.5525e-14 AS=1.89e-14 PD=5.25e-07 PS=6e-07 $X=1565 $Y=600 $D=1
M3 vss! rs2_rdata 5 vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.5525e-14 PD=3.8e-07 PS=5.25e-07 $X=2010 $Y=600 $D=1
M4 2 alu_inv_rs2 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M5 rs2_after_inv alu_inv_rs2 rs2_rdata vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1045 $Y=1850 $D=0
M6 5 2 rs2_after_inv vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.105e-14 AS=3.78e-14 PD=7.05e-07 PS=7.8e-07 $X=1565 $Y=1850 $D=0
M7 vdd! rs2_rdata 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=3.105e-14 PD=5.6e-07 PS=7.05e-07 $X=2010 $Y=1850 $D=0
.ENDS
***************************************
