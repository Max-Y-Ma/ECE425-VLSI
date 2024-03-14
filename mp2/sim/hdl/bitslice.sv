module bitslice (
    input   logic           clk,
    input   logic           rst,

    input   logic   [31:0]  rs1_sel,
    input   logic   [31:0]  rs2_sel,
    input   logic   [31:0]  rd_sel,

    input   logic           alu_mux_1_sel,
    input   logic           alu_mux_2_sel,
    input   logic           alu_inv_rs2,
    input   logic   [1:0]   alu_op,
    input   logic           shift_dir,
    input   logic           cmp_mux_sel,
    input   logic           pc_mux_sel,
    input   logic   [2:0]   mem_mux_sel,
    input   logic   [2:0]   rd_mux_sel,
    input   logic           cmp_out,
    input   logic           imm,

    output  logic           alu_out,
    input   logic           alu_cin,
    output  logic           alu_cout,

    input   logic           lb,
    input   logic           lh,
    input   logic           lw,
    input   logic           lbu,
    input   logic           lhu,

    input   logic           pc_reset_value,
    input   logic           pc_adder_4,
    input   logic           pc_cin,
    output  logic           pc_cout,
    output  logic           pc,

    input   logic   [4:0]   shift_amount,
    input   logic   [4:0]   shift_in_from_right,
    input   logic   [4:0]   shift_in_from_left,
    output  logic   [5:0]   shift_out,
    output  logic           alu_mux_2_out,

    output  logic           rs2_rdata,

    input   logic           cmp_eq_in,
    input   logic           cmp_lt_in,
    output  logic           cmp_eq_out,
    output  logic           cmp_lt_out,
    output  logic           cmp_src_a,
    output  logic           cmp_src_b,

    output  logic  [31:0]   rf_data
);

            logic           alu_mux_1_out;
            logic           rs2_after_inv;
            logic           cmp_mux_out;
            logic           mem_mux_out;
            logic           rd_mux_out;
            logic           pcp4;
            logic           rs1_rdata;

    assign cmp_src_a = rs1_rdata;
    assign cmp_src_b = cmp_mux_out;

    // Assign rf_data
    always_comb begin
        rf_data[0] = regfile.I0.I0.Bit;
        rf_data[1] = regfile.I0.I1.Bit;
        rf_data[2] = regfile.I0.I2.Bit;
        rf_data[3] = regfile.I0.I3.Bit;
        rf_data[4] = regfile.I0.I4.Bit;
        rf_data[5] = regfile.I0.I5.Bit;
        rf_data[6] = regfile.I0.I6.Bit;
        rf_data[7] = regfile.I0.I7.Bit;
        rf_data[8] = regfile.I0.I8.Bit;
        rf_data[9] = regfile.I0.I9.Bit;
        rf_data[10] = regfile.I0.I10.Bit;
        rf_data[11] = regfile.I0.I11.Bit;
        rf_data[12] = regfile.I0.I12.Bit;
        rf_data[13] = regfile.I0.I13.Bit;
        rf_data[14] = regfile.I0.I14.Bit;
        rf_data[15] = regfile.I0.I15.Bit;
        rf_data[16] = regfile.I0.I16.Bit;
        rf_data[17] = regfile.I0.I17.Bit;
        rf_data[18] = regfile.I0.I18.Bit;
        rf_data[19] = regfile.I0.I19.Bit;
        rf_data[20] = regfile.I0.I20.Bit;
        rf_data[21] = regfile.I0.I21.Bit;
        rf_data[22] = regfile.I0.I22.Bit;
        rf_data[23] = regfile.I0.I23.Bit;
        rf_data[24] = regfile.I0.I24.Bit;
        rf_data[25] = regfile.I0.I25.Bit;
        rf_data[26] = regfile.I0.I26.Bit;
        rf_data[27] = regfile.I0.I27.Bit;
        rf_data[28] = regfile.I0.I28.Bit;
        rf_data[29] = regfile.I0.I29.Bit;
        rf_data[30] = regfile.I0.I30.Bit;
        rf_data[31] = regfile.I0.I31.Bit;
    end

    mem_mux         mem_mux         (.*);
    rd_mux          rd_mux          (.shift_out(shift_out[5]), .*);
    pcadder         pcadder         (.*);
    regfile         regfile         (.*);
    pc              pc_             (.*);
    rs2_inverter    rs2_inverter    (.*);
    alu             alu             (.*);
    shift           shift           (.*);
    cmp             cmp             (.*);

    mux2 alu_mux_1(
        .A(rs1_rdata),
        .B(pc),
        .S0(alu_mux_1_sel),
        .Z(alu_mux_1_out)
    );
    mux2 alu_mux_2(
        .A(rs2_after_inv),
        .B(imm),
        .S0(alu_mux_2_sel),
        .Z(alu_mux_2_out)
    );
    mux2 cmp_mux(
        .A(rs2_rdata),
        .B(imm),
        .S0(cmp_mux_sel),
        .Z(cmp_mux_out)
    );

endmodule
