module datapath(
    input   logic               clk,
    input   logic               rst,

    input   logic   [31:0]      rs1_sel,
    input   logic   [31:0]      rs2_sel,
    input   logic   [31:0]      rd_sel,

    input   logic               alu_mux_1_sel,
    input   logic               alu_mux_2_sel,
    input   logic               alu_inv_rs2,
    input   logic               alu_cin,
    input   logic   [1:0]       alu_op,
    input   logic               shift_msb,
    input   logic               shift_dir,
    input   logic               cmp_mux_sel,
    input   logic               pc_mux_sel,
    input   logic   [2:0]       mem_mux_sel,
    input   logic   [2:0]       rd_mux_sel,
    input   logic               cmp_out,
    input   logic   [31:0]      imm,

    output  logic               cmp_lt,
    output  logic               cmp_eq,
    output  logic               cmp_a_31,
    output  logic               cmp_b_31,

    output  logic   [31:0]      imem_addr,
    output  logic   [31:0]      dmem_addr,
    input   logic   [31:0]      dmem_rdata,
    output  logic   [31:0]      dmem_wdata
);

            logic   [31:0]      b_cmp_out;
            logic   [32:0]      b_alu_cin;
            logic   [31:0]      dmem_lb;
            logic   [31:0]      dmem_lh;
            logic   [31:0]      dmem_lbu;
            logic   [31:0]      dmem_lhu;
            logic   [31:0]      pc_reset_value;
            logic   [31:0]      pc_adder_4;
            logic   [32:0]      b_pc_cin;
            logic   [32:0]      pc_cout;
            logic   [31:0][5:0] shift_out;
            logic   [31:0][4:0] shift_in_from_right;
            logic   [31:0][4:0] shift_in_from_left;
            logic   [31:0]      alu_mux_2_out;
            logic   [32:0]      b_cmp_eq_out;
            logic   [32:0]      b_cmp_lt_out;
            logic   [31:0]      b_cmp_a;
            logic   [31:0]      b_cmp_b;

            logic   [31:0][31:0] rf_data;
            logic   [31:0]      real_rf_data[32];

    always_comb begin
        b_cmp_out           = {31'd0, cmp_out};
        b_alu_cin[0]        = alu_cin;
        dmem_lb             = {{24{dmem_rdata[ 7]}}, dmem_rdata[ 7:0]};
        dmem_lh             = {{16{dmem_rdata[15]}}, dmem_rdata[15:0]};
        dmem_lbu            = {{24{1'b0}}          , dmem_rdata[ 7:0]};
        dmem_lhu            = {{16{1'b0}}          , dmem_rdata[15:0]};
        pc_reset_value      = 32'h60000000;
        pc_adder_4          = 32'd4;
        b_pc_cin[0]         = 1'b0;
        b_cmp_eq_out[32]    = 1'b1;
        b_cmp_lt_out[32]    = 1'b0;
        cmp_lt              = b_cmp_lt_out[0];
        cmp_eq              = b_cmp_eq_out[0];
        cmp_a_31            = b_cmp_a[31];
        cmp_b_31            = b_cmp_b[31];
        for (int i = 0; i < 32; i++) begin
            for (int j = 0; j < 5; j++) begin
                shift_in_from_right     [i][j] = (i-2**j <  0) ? 1'b0       : shift_out[i-2**j][j];
                shift_in_from_left      [i][j] = (i+2**j > 31) ? shift_msb : shift_out[i+2**j][j];
            end
        end
    end

    generate
        // Stub Code
        // for (genvar i = 0; i < 32; i++) begin : reg_assign
            // for (genvar j = 0; j < 32; j++) begin : bit_assign
                // assign real_rf_data[i][j] = rf_data[j][i];
            // end
        // end

        // Bitslice Code
        for (genvar j = 0; j < 32; j++) begin : bit_assign0
            assign real_rf_data[0][j] = 1'b0;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign1
            assign real_rf_data[1][j] = bitslices[j].bitslice.I9.I0.I1.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign2
            assign real_rf_data[2][j] = bitslices[j].bitslice.I9.I0.I2.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign3
            assign real_rf_data[3][j] = bitslices[j].bitslice.I9.I0.I3.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign4
            assign real_rf_data[4][j] = bitslices[j].bitslice.I9.I0.I4.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign5
            assign real_rf_data[5][j] = bitslices[j].bitslice.I9.I0.I5.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign6
            assign real_rf_data[6][j] = bitslices[j].bitslice.I9.I0.I6.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign7
            assign real_rf_data[7][j] = bitslices[j].bitslice.I9.I0.I7.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign8
            assign real_rf_data[8][j] = bitslices[j].bitslice.I9.I0.I8.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign9
            assign real_rf_data[9][j] = bitslices[j].bitslice.I9.I0.I9.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign10
            assign real_rf_data[10][j] = bitslices[j].bitslice.I9.I0.I10.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign11
            assign real_rf_data[11][j] = bitslices[j].bitslice.I9.I0.I11.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign12
            assign real_rf_data[12][j] = bitslices[j].bitslice.I9.I0.I12.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign13
            assign real_rf_data[13][j] = bitslices[j].bitslice.I9.I0.I13.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign14
            assign real_rf_data[14][j] = bitslices[j].bitslice.I9.I0.I14.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign15
            assign real_rf_data[15][j] = bitslices[j].bitslice.I9.I0.I15.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign16
            assign real_rf_data[16][j] = bitslices[j].bitslice.I9.I0.I16.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign17
            assign real_rf_data[17][j] = bitslices[j].bitslice.I9.I0.I17.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign18
            assign real_rf_data[18][j] = bitslices[j].bitslice.I9.I0.I18.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign19
            assign real_rf_data[19][j] = bitslices[j].bitslice.I9.I0.I19.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign20
            assign real_rf_data[20][j] = bitslices[j].bitslice.I9.I0.I20.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign21
            assign real_rf_data[21][j] = bitslices[j].bitslice.I9.I0.I21.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign22
            assign real_rf_data[22][j] = bitslices[j].bitslice.I9.I0.I22.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign23
            assign real_rf_data[23][j] = bitslices[j].bitslice.I9.I0.I23.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign24
            assign real_rf_data[24][j] = bitslices[j].bitslice.I9.I0.I24.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign25
            assign real_rf_data[25][j] = bitslices[j].bitslice.I9.I0.I25.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign26
            assign real_rf_data[26][j] = bitslices[j].bitslice.I9.I0.I26.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign27
            assign real_rf_data[27][j] = bitslices[j].bitslice.I9.I0.I27.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign28
            assign real_rf_data[28][j] = bitslices[j].bitslice.I9.I0.I28.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign29
            assign real_rf_data[29][j] = bitslices[j].bitslice.I9.I0.I29.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign30
            assign real_rf_data[30][j] = bitslices[j].bitslice.I9.I0.I30.Bit;
        end
        for (genvar j = 0; j < 32; j++) begin : bit_assign31
            assign real_rf_data[31][j] = bitslices[j].bitslice.I9.I0.I31.Bit;
        end
    endgenerate

    generate for (genvar i = 0; i < 32; i++) begin : bitslices
        bitslice bitslice(
            .cmp_out                    (b_cmp_out[i]                   ),
            .imm                        (imm[i]                         ),
            .alu_out                    (dmem_addr[i]                   ),
            .alu_cin                    (b_alu_cin[i]                   ),
            .alu_cout                   (b_alu_cin[i+1]                 ),
            .lb                         (dmem_lb[i]                     ),
            .lh                         (dmem_lh[i]                     ),
            .lw                         (dmem_rdata[i]                  ),
            .lbu                        (dmem_lbu[i]                    ),
            .lhu                        (dmem_lhu[i]                    ),
            .pc_reset_value             (pc_reset_value[i]              ),
            .pc_adder_4                 (pc_adder_4[i]                  ),
            .pc_cin                     (b_pc_cin[i]                    ),
            .pc_cout                    (b_pc_cin[i+1]                  ),
            .shift_amount               (alu_mux_2_out[4:0]             ),
            .shift_out                  (shift_out[i]                   ),
            .shift_in_from_right        (shift_in_from_right[i]         ),
            .shift_in_from_left         (shift_in_from_left[i]          ),
            .alu_mux_2_out              (alu_mux_2_out[i]               ),
            .rs2_rdata                  (dmem_wdata[i]                  ),
            .cmp_eq_in                  (b_cmp_eq_out[i+1]              ),
            .cmp_lt_in                  (b_cmp_lt_out[i+1]              ),
            .cmp_eq_out                 (b_cmp_eq_out[i]                ),
            .cmp_lt_out                 (b_cmp_lt_out[i]                ),
            .cmp_src_a                  (b_cmp_a[i]                     ),
            .cmp_src_b                  (b_cmp_b[i]                     ),
            .pc                         (imem_addr[i]                   ),
            // .rf_data                    (rf_data[i]                     ),      // Comment for bitslice 
            .*
        );
    end endgenerate

endmodule
