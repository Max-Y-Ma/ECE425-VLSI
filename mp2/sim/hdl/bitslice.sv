module bitslice_stub (
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

    mem_mux_stub         mem_mux         (.*);
    rd_mux_stub          rd_mux          (.shift_out(shift_out[5]), .*);
    pcadder_stub         pcadder         (.*);
    regfile_stub         regfile         (.*);
    pc_stub              pc_             (.*);
    rs2_inverter_stub    rs2_inverter    (.*);
    alu_stub             alu             (.*);
    shift_stub           shift           (.*);
    cmp_stub             cmp             (.*);

    mux2_stub alu_mux_1(
        .A(rs1_rdata),
        .B(pc),
        .S0(alu_mux_1_sel),
        .Z(alu_mux_1_out)
    );
    mux2_stub alu_mux_2(
        .A(rs2_after_inv),
        .B(imm),
        .S0(alu_mux_2_sel),
        .Z(alu_mux_2_out)
    );
    mux2_stub cmp_mux(
        .A(rs2_rdata),
        .B(imm),
        .S0(cmp_mux_sel),
        .Z(cmp_mux_out)
    );

endmodule
