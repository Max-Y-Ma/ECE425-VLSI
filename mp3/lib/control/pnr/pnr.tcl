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
floorPlan -site CoreSite -s 120 3.5 10 10 10 10

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
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin pc_mux_sel
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_lt
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_eq
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_a_31
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_b_31
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_mux_sel
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin shift_msb
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin shift_dir
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin alu_op[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin alu_cin
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin alu_mux_2_sel
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin alu_inv_rs2
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin alu_mux_1_sel
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin clk
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[3]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[4]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[5]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[6]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[7]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[8]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[9]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[10]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[11]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[12]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[13]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[14]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[15]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[16]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[17]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[18]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[19]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[20]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[21]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[22]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[23]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[24]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[25]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[26]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[27]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[28]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[29]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs2_sel[30]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[3]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[4]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[5]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[6]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[7]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[8]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[9]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[10]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[11]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[12]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[13]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[14]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[15]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[16]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[17]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[18]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[19]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[20]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[21]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[22]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[23]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[24]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[25]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[26]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[27]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[28]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[29]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rs1_sel[30]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[3]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[4]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[5]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[6]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[7]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[8]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[9]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[10]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[11]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[12]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[13]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[14]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[15]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[16]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[17]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[18]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[19]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[20]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[21]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[22]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[23]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[24]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[25]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[26]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[27]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[28]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[29]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_sel[30]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[3]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[4]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[5]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[6]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[7]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[8]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[9]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[10]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[11]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[12]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[13]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[14]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[15]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[16]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[17]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[18]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[19]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[20]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[21]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[22]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[23]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[24]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[25]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[26]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[27]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[28]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[29]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imm[30]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin cmp_out
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_mux_sel[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin rd_mux_sel[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin mem_mux_sel[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin mem_mux_sel[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[3]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[4]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[5]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[6]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[7]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[8]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[9]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[10]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[11]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[12]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[13]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[14]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[15]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[16]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[17]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[18]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[19]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[20]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[21]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[22]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[23]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[24]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[25]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[26]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[27]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[28]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[29]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin imem_rdata[30]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin dmem_wmask[0]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin dmem_wmask[1]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin dmem_wmask[2]
editPin -spreadType SIDE -side BOTTOM -layer metal3 -pin dmem_write
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
