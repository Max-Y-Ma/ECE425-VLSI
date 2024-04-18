# From Right to Left
pinList = [
    "pc_mux_sel", 
    "cmp_lt", 
    "cmp_eq", 
    "cmp_a_31", 
    "cmp_b_31",
    "cmp_mux_sel", 
    "shift_msb", 
    "shift_dir", 
    "alu_op[1]",
    "alu_cin",
    "alu_mux_2_sel", 
    "alu_inv_rs2", 
    "alu_mux_1_sel", 
    "clk", 
    "rs2_sel[31]",
    "rs1_sel[31]",
    "rd_sel[31]",
    "imm[31]",
    "cmp_out",
    "rd_mux_sel[2]",
    "mem_mux_sel[2]",
    "imem_rdata[31]",
    "dmem_wmask[3]",
    "dmem_write", 
]

# Open a file in write mode ('w')
args = "-spreadType SIDE -side BOTTOM -layer metal3"
with open('control_pins.txt', 'w') as pinfile:
    pinfile.write(f"setPinAssignMode -pinEditInBatch true\n")

    for pin in pinList:
        if "[" in pin:
            count = int(pin.split("[")[1][:-1])
            pin_name = pin.split("[")[0]
            for i in range(count):
                pinfile.write(f"editPin {args} -pin {pin_name}[{i}]\n")
        else:
            pinfile.write(f"editPin {args} -pin {pin}\n")

    pinfile.write(f"setPinAssignMode -pinEditInBatch false\n")
