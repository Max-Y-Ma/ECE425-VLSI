* SPICE NETLIST
***************************************

.SUBCKT shift shift_dir shift_out<0> shift_amount<0> shift_out<1> shift_amount<1> shift_out<2> shift_amount<2> shift_out<3> shift_amount<3> shift_out<4> shift_amount<4> shift_in_from_right<0> shift_in_from_left<0> shift_in_from_right<1> shift_in_from_left<1> shift_in_from_right<2> shift_in_from_left<2> shift_in_from_right<3> shift_in_from_left<3> shift_in_from_right<4>
+ shift_in_from_left<4> alu_mux_1_out vss! vdd! shift_out<5>
** N=37 EP=25 IP=0 FDC=56
M0 2 shift_dir vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=310 $Y=600 $D=1
M1 3 2 shift_in_from_right<0> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=1045 $Y=600 $D=1
M2 shift_in_from_left<0> shift_dir 3 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=1565 $Y=600 $D=1
M3 4 2 shift_in_from_right<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=2375 $Y=600 $D=1
M4 shift_in_from_left<1> shift_dir 4 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=2895 $Y=600 $D=1
M5 5 2 shift_in_from_right<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=3705 $Y=600 $D=1
M6 shift_in_from_left<2> shift_dir 5 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=4225 $Y=600 $D=1
M7 6 2 shift_in_from_right<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=5035 $Y=600 $D=1
M8 shift_in_from_left<3> shift_dir 6 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=5555 $Y=600 $D=1
M9 7 2 shift_in_from_right<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=6365 $Y=600 $D=1
M10 shift_in_from_left<4> shift_dir 7 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=6885 $Y=600 $D=1
M11 vss! alu_mux_1_out 34 vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.26e-14 AS=9e-15 PD=4.6e-07 PS=3.8e-07 $X=7620 $Y=600 $D=1
M12 shift_out<0> 34 vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=1.26e-14 PD=3.8e-07 PS=4.6e-07 $X=8000 $Y=600 $D=1
M13 10 shift_amount<0> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=8660 $Y=600 $D=1
M14 shift_out<1> 10 shift_out<0> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=9395 $Y=600 $D=1
M15 3 shift_amount<0> shift_out<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=9915 $Y=600 $D=1
M16 13 shift_amount<1> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=10650 $Y=600 $D=1
M17 shift_out<2> 13 shift_out<1> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=11385 $Y=600 $D=1
M18 4 shift_amount<1> shift_out<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=11905 $Y=600 $D=1
M19 16 shift_amount<2> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=12640 $Y=600 $D=1
M20 shift_out<3> 16 shift_out<2> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=13375 $Y=600 $D=1
M21 5 shift_amount<2> shift_out<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=13895 $Y=600 $D=1
M22 19 shift_amount<3> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=14630 $Y=600 $D=1
M23 shift_out<4> 19 shift_out<3> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=15365 $Y=600 $D=1
M24 6 shift_amount<3> shift_out<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=15885 $Y=600 $D=1
M25 22 shift_amount<4> vss! vss! NMOS_VTL L=5e-08 W=9e-08 AD=9e-15 AS=9e-15 PD=3.8e-07 PS=3.8e-07 $X=16620 $Y=600 $D=1
M26 shift_out<5> 22 shift_out<4> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.89e-14 AS=1.2375e-14 PD=6e-07 PS=4.55e-07 $X=17355 $Y=600 $D=1
M27 7 shift_amount<4> shift_out<5> vss! NMOS_VTL L=5e-08 W=9e-08 AD=1.2375e-14 AS=1.89e-14 PD=4.55e-07 PS=6e-07 $X=17875 $Y=600 $D=1
M28 2 shift_dir vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=310 $Y=1850 $D=0
M29 3 shift_dir shift_in_from_right<0> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=1045 $Y=1850 $D=0
M30 shift_in_from_left<0> 2 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=1565 $Y=1850 $D=0
M31 4 shift_dir shift_in_from_right<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=2375 $Y=1850 $D=0
M32 shift_in_from_left<1> 2 4 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=2895 $Y=1850 $D=0
M33 5 shift_dir shift_in_from_right<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=3705 $Y=1850 $D=0
M34 shift_in_from_left<2> 2 5 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=4225 $Y=1850 $D=0
M35 6 shift_dir shift_in_from_right<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=5035 $Y=1850 $D=0
M36 shift_in_from_left<3> 2 6 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=5555 $Y=1850 $D=0
M37 7 shift_dir shift_in_from_right<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=6365 $Y=1850 $D=0
M38 shift_in_from_left<4> 2 7 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=6885 $Y=1850 $D=0
M39 vdd! alu_mux_1_out 34 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.8e-14 PD=6.4e-07 PS=5.6e-07 $X=7620 $Y=1850 $D=0
M40 shift_out<0> 34 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=2.52e-14 PD=5.6e-07 PS=6.4e-07 $X=8000 $Y=1850 $D=0
M41 10 shift_amount<0> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=8660 $Y=1850 $D=0
M42 shift_out<1> shift_amount<0> shift_out<0> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=9395 $Y=1850 $D=0
M43 3 10 shift_out<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=9915 $Y=1850 $D=0
M44 13 shift_amount<1> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=10650 $Y=1850 $D=0
M45 shift_out<2> shift_amount<1> shift_out<1> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=11385 $Y=1850 $D=0
M46 4 13 shift_out<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=11905 $Y=1850 $D=0
M47 16 shift_amount<2> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=12640 $Y=1850 $D=0
M48 shift_out<3> shift_amount<2> shift_out<2> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=13375 $Y=1850 $D=0
M49 5 16 shift_out<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=13895 $Y=1850 $D=0
M50 19 shift_amount<3> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=14630 $Y=1850 $D=0
M51 shift_out<4> shift_amount<3> shift_out<3> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=15365 $Y=1850 $D=0
M52 6 19 shift_out<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=15885 $Y=1850 $D=0
M53 22 shift_amount<4> vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.8e-14 AS=1.8e-14 PD=5.6e-07 PS=5.6e-07 $X=16620 $Y=1850 $D=0
M54 shift_out<5> shift_amount<4> shift_out<4> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=3.78e-14 AS=2.475e-14 PD=7.8e-07 PS=6.35e-07 $X=17355 $Y=1850 $D=0
M55 7 22 shift_out<5> vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.475e-14 AS=3.78e-14 PD=6.35e-07 PS=7.8e-07 $X=17875 $Y=1850 $D=0
.ENDS
***************************************
