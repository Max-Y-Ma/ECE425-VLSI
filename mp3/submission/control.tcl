# proc is a function. this is used later to connect all the vdd! and vss! together.
proc connectGlobalNets {} {
	globalNetConnect vdd! -type pgpin -pin vdd! -all
	globalNetConnect vss! -type pgpin -pin vss! -all
	globalNetConnect vdd! -type tiehi -all
	globalNetConnect vss! -type tielo -all
	applyGlobalNets
}

# set the top level module name (used elsewhere in the scripts)
set design_toplevel control

# set the verilog file to pnr
set init_verilog ../synth/outputs/$design_toplevel.v

# set the lef file of your standard cells
# when you add your regfile lef, it is here
# if you want to supply more than one lef use the following syntax:
# set init_lef_file "1.lef 2.lef"
set init_lef_file ../../stdcells.lef

# actually set the top level cell name
set init_top_cell $design_toplevel

# set power and ground net names
set init_pwr_net vdd!
set init_gnd_net vss!

# set multi-mode multi-corner file
# this file contains the operating conditions used to evaluate timing
# for your design. In our case, we just use the single lib file as our corner.
# In ECE 498HK, this will contain slow, typical and fast corners
# for the wires and the standard cells
set init_mmmc_file mmmc.tcl

# actually init the design
init_design

# connect all the global nets in the design together (vdd!, vss!)
# the function is defined above.
connectGlobalNets

# DONE floorplan your design. Put the size of your chip that you want here.
floorPlan -site CoreSite -s 116 3.5 10 10 10 10

# create the horizontal vdd! and vss! wires used by the standard cells.
sroute -allowJogging 0 -allowLayerChange 0 -crossoverViaLayerRange { metal7 metal1 } -layerChangeRange { metal7 metal1 } -nets { vss! vdd! }

# create a power ring around your processor, connecting all the vss! and vdd! together physically.
addRing -follow core -offset {top 2 bottom 2 left 2 right 2} -spacing {top 2 bottom 2 left 2 right 2} -width {top 2 bottom 2 left 2 right 2} -layer {top metal7 bottom metal7 left metal8 right metal8} -nets { vss! vdd! }

# DONE add power grid
# specify via transitions
setAddStripeMode -stacked_via_bottom_layer 7 -stacked_via_top_layer 8

# horizontal "stripes"
addStripe -nets {vss! vdd!} -layer metal7 -direction horizontal -width 0.4 -spacing 2 -set_to_set_distance 4.8

# vertical "stripes" on metal8
addStripe -nets {vss! vdd!} -layer metal8 -direction vertical -width 0.4 -spacing 2 -set_to_set_distance 4.8

# DONE restrict routing to only metal 6
setDesignMode -bottomRoutingLayer metal1 -topRoutingLayer metal6

# TODO for the regfile part, place the regfile marco
# placeInstance ...

# DONE specify where are the pins
setPinAssignMode -pinEditInBatch true
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin {pc_mux_sel cmp_lt cmp_eq cmp_a_31 cmp_b_31 cmp_mux_sel shift_msb shift_dir alu_op[0] alu_cin alu_mux_2_sel alu_inv_rs2 alu_mux_1_sel clk rs2_sel[0] rs2_sel[1] rs2_sel[2] rs2_sel[3] rs2_sel[4] rs2_sel[5] rs2_sel[6] rs2_sel[7] rs2_sel[8] rs2_sel[9] rs2_sel[10] rs2_sel[11] rs2_sel[12] rs2_sel[13] rs2_sel[14] rs2_sel[15] rs2_sel[16] rs2_sel[17] rs2_sel[18] rs2_sel[19] rs2_sel[20] rs2_sel[21] rs2_sel[22] rs2_sel[23] rs2_sel[24] rs2_sel[25] rs2_sel[26] rs2_sel[27] rs2_sel[28] rs2_sel[29] rs2_sel[30] rs1_sel[0] rs1_sel[1] rs1_sel[2] rs1_sel[3] rs1_sel[4] rs1_sel[5] rs1_sel[6] rs1_sel[7] rs1_sel[8] rs1_sel[9] rs1_sel[10] rs1_sel[11] rs1_sel[12] rs1_sel[13] rs1_sel[14] rs1_sel[15] rs1_sel[16] rs1_sel[17] rs1_sel[18] rs1_sel[19] rs1_sel[20] rs1_sel[21] rs1_sel[22] rs1_sel[23] rs1_sel[24] rs1_sel[25] rs1_sel[26] rs1_sel[27] rs1_sel[28] rs1_sel[29] rs1_sel[30] rd_sel[0] rd_sel[1] rd_sel[2] rd_sel[3] rd_sel[4] rd_sel[5] rd_sel[6] rd_sel[7] rd_sel[8] rd_sel[9] rd_sel[10] rd_sel[11] rd_sel[12] rd_sel[13] rd_sel[14] rd_sel[15] rd_sel[16] rd_sel[17] rd_sel[18] rd_sel[19] rd_sel[20] rd_sel[21] rd_sel[22] rd_sel[23] rd_sel[24] rd_sel[25] rd_sel[26] rd_sel[27] rd_sel[28] rd_sel[29] rd_sel[30] imm[0] imm[1] imm[2] imm[3] imm[4] imm[5] imm[6] imm[7] imm[8] imm[9] imm[10] imm[11] imm[12] imm[13] imm[14] imm[15] imm[16] imm[17] imm[18] imm[19] imm[20] imm[21] imm[22] imm[23] imm[24] imm[25] imm[26] imm[27] imm[28] imm[29] imm[30] cmp_out rd_mux_sel[0] rd_mux_sel[1] mem_mux_sel[0] mem_mux_sel[1] imem_rdata[0] imem_rdata[1] imem_rdata[2] imem_rdata[3] imem_rdata[4] imem_rdata[5] imem_rdata[6] imem_rdata[7] imem_rdata[8] imem_rdata[9] imem_rdata[10] imem_rdata[11] imem_rdata[12] imem_rdata[13] imem_rdata[14] imem_rdata[15] imem_rdata[16] imem_rdata[17] imem_rdata[18] imem_rdata[19] imem_rdata[20] imem_rdata[21] imem_rdata[22] imem_rdata[23] imem_rdata[24] imem_rdata[25] imem_rdata[26] imem_rdata[27] imem_rdata[28] imem_rdata[29] imem_rdata[30] dmem_wmask[0] dmem_wmask[1] dmem_wmask[2] dmem_write}
setPinAssignMode -pinEditInBatch false

# DONE uncomment the two below command to do pnr. These steps takes innovus more time.

# place all the standard cells in your design. This command is actually a series of many
# mini commands and settings, but it tries to optimally place the standard cells in your design
# considering area, timing, routing congestion, routing length, and other things.
# See "man place_design" to find out more.
place_design

routeDesign

# connectGlobalNets

# DONE find the command that checks DRC
verify_drc

# save your design as a GDSII, which you can open in Virtuoso
streamOut innovus.gdsii -mapFile "/class/ece425/innovus.map"

# save the design, so innovus can open it later
saveDesign $design_toplevel
