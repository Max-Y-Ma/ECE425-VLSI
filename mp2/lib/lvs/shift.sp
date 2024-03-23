* SPICE NETLIST
***************************************

.SUBCKT shift shift_dir shift_out<0> shift_amount<0> shift_out<1> shift_amount<1> shift_out<2> shift_amount<2> shift_out<3> shift_amount<3> shift_out<4> shift_amount<4> shift_in_from_right<0> shift_in_from_left<0> shift_in_from_right<1> shift_in_from_left<1> shift_in_from_right<2> shift_in_from_left<2> shift_in_from_right<3> shift_in_from_left<3> shift_in_from_right<4>
+ shift_in_from_left<4> alu_mux_1_out vss! vdd! shift_out<5>
** N=41 EP=25 IP=0 FDC=64
M0 2 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 3 2 shift_in_from_right<0> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1045 $Y=600 $D=1
M2 shift_in_from_left<0> shift_dir 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=1565 $Y=600 $D=1
M3 4 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=2300 $Y=600 $D=1
M4 5 4 shift_in_from_right<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=3035 $Y=600 $D=1
M5 shift_in_from_left<1> shift_dir 5 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=3555 $Y=600 $D=1
M6 6 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=4290 $Y=600 $D=1
M7 7 6 shift_in_from_right<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=5025 $Y=600 $D=1
M8 shift_in_from_left<2> shift_dir 7 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=5545 $Y=600 $D=1
M9 8 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=6280 $Y=600 $D=1
M10 9 8 shift_in_from_right<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=7015 $Y=600 $D=1
M11 shift_in_from_left<3> shift_dir 9 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=7535 $Y=600 $D=1
M12 10 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=8270 $Y=600 $D=1
M13 11 10 shift_in_from_right<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=9005 $Y=600 $D=1
M14 shift_in_from_left<4> shift_dir 11 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=9525 $Y=600 $D=1
M15 vss! alu_mux_1_out 38 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=10260 $Y=600 $D=1
M16 shift_out<0> 38 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=10640 $Y=600 $D=1
M17 14 shift_amount<0> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=11300 $Y=600 $D=1
M18 shift_out<1> 14 shift_out<0> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=12035 $Y=600 $D=1
M19 3 shift_amount<0> shift_out<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=12555 $Y=600 $D=1
M20 17 shift_amount<1> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=13290 $Y=600 $D=1
M21 shift_out<2> 17 shift_out<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=14025 $Y=600 $D=1
M22 5 shift_amount<1> shift_out<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=14545 $Y=600 $D=1
M23 20 shift_amount<2> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=15280 $Y=600 $D=1
M24 shift_out<3> 20 shift_out<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=16015 $Y=600 $D=1
M25 7 shift_amount<2> shift_out<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=16535 $Y=600 $D=1
M26 23 shift_amount<3> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=17270 $Y=600 $D=1
M27 shift_out<4> 23 shift_out<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=18005 $Y=600 $D=1
M28 9 shift_amount<3> shift_out<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=18525 $Y=600 $D=1
M29 26 shift_amount<4> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=19260 $Y=600 $D=1
M30 shift_out<5> 26 shift_out<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=19995 $Y=600 $D=1
M31 11 shift_amount<4> shift_out<5> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=20515 $Y=600 $D=1
M32 2 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M33 3 shift_dir shift_in_from_right<0> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1045 $Y=1850 $D=0
M34 shift_in_from_left<0> 2 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=1565 $Y=1850 $D=0
M35 4 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=2300 $Y=1850 $D=0
M36 5 shift_dir shift_in_from_right<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=3035 $Y=1850 $D=0
M37 shift_in_from_left<1> 4 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=3555 $Y=1850 $D=0
M38 6 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=4290 $Y=1850 $D=0
M39 7 shift_dir shift_in_from_right<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=5025 $Y=1850 $D=0
M40 shift_in_from_left<2> 6 7 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=5545 $Y=1850 $D=0
M41 8 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=6280 $Y=1850 $D=0
M42 9 shift_dir shift_in_from_right<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=7015 $Y=1850 $D=0
M43 shift_in_from_left<3> 8 9 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=7535 $Y=1850 $D=0
M44 10 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=8270 $Y=1850 $D=0
M45 11 shift_dir shift_in_from_right<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=9005 $Y=1850 $D=0
M46 shift_in_from_left<4> 10 11 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=9525 $Y=1850 $D=0
M47 vdd! alu_mux_1_out 38 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=10260 $Y=1850 $D=0
M48 shift_out<0> 38 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=10640 $Y=1850 $D=0
M49 14 shift_amount<0> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=11300 $Y=1850 $D=0
M50 shift_out<1> shift_amount<0> shift_out<0> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=12035 $Y=1850 $D=0
M51 3 14 shift_out<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=12555 $Y=1850 $D=0
M52 17 shift_amount<1> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=13290 $Y=1850 $D=0
M53 shift_out<2> shift_amount<1> shift_out<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=14025 $Y=1850 $D=0
M54 5 17 shift_out<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=14545 $Y=1850 $D=0
M55 20 shift_amount<2> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=15280 $Y=1850 $D=0
M56 shift_out<3> shift_amount<2> shift_out<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=16015 $Y=1850 $D=0
M57 7 20 shift_out<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=16535 $Y=1850 $D=0
M58 23 shift_amount<3> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=17270 $Y=1850 $D=0
M59 shift_out<4> shift_amount<3> shift_out<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=18005 $Y=1850 $D=0
M60 9 23 shift_out<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=18525 $Y=1850 $D=0
M61 26 shift_amount<4> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=19260 $Y=1850 $D=0
M62 shift_out<5> shift_amount<4> shift_out<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=19995 $Y=1850 $D=0
M63 11 26 shift_out<5> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=20515 $Y=1850 $D=0
.ENDS
***************************************
