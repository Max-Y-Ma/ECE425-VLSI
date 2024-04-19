# proc is a function. this is used later to connect all the vdd! and vss! together.
proc connectGlobalNets {} {
	globalNetConnect vdd! -type pgpin -pin vdd! -all
	globalNetConnect vss! -type pgpin -pin vss! -all
	globalNetConnect vdd! -type tiehi -all
	globalNetConnect vss! -type tielo -all
	applyGlobalNets
}

# set the top level module name (used elsewhere in the scripts)
set design_toplevel cpu

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
floorPlan -site CoreSite -s 130 130 10 10 10 10

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
editPin -spreadType EDGE -layer metal3 -edge 0 -pin {clk rst imem_addr[0] imem_addr[1] imem_addr[2] imem_addr[3] imem_addr[4] imem_addr[5] imem_addr[6] imem_addr[7] imem_addr[8] imem_addr[9] imem_addr[10] imem_addr[11] imem_addr[12] imem_addr[13] imem_addr[14] imem_addr[15] imem_addr[16] imem_addr[17] imem_addr[18] imem_addr[19] imem_addr[20] imem_addr[21] imem_addr[22] imem_addr[23] imem_addr[24] imem_addr[25] imem_addr[26] imem_addr[27] imem_addr[28] imem_addr[29] imem_addr[30]}
editPin -spreadType EDGE -layer metal3 -edge 1 -pin {imem_rdata[0] imem_rdata[1] imem_rdata[2] imem_rdata[3] imem_rdata[4] imem_rdata[5] imem_rdata[6] imem_rdata[7] imem_rdata[8] imem_rdata[9] imem_rdata[10] imem_rdata[11] imem_rdata[12] imem_rdata[13] imem_rdata[14] imem_rdata[15] imem_rdata[16] imem_rdata[17] imem_rdata[18] imem_rdata[19] imem_rdata[20] imem_rdata[21] imem_rdata[22] imem_rdata[23] imem_rdata[24] imem_rdata[25] imem_rdata[26] imem_rdata[27] imem_rdata[28] imem_rdata[29] imem_rdata[30] dmem_addr[0] dmem_addr[1] dmem_addr[2] dmem_addr[3] dmem_addr[4] dmem_addr[5] dmem_addr[6] dmem_addr[7] dmem_addr[8] dmem_addr[9] dmem_addr[10] dmem_addr[11] dmem_addr[12] dmem_addr[13] dmem_addr[14] dmem_addr[15] dmem_addr[16] dmem_addr[17] dmem_addr[18] dmem_addr[19] dmem_addr[20] dmem_addr[21] dmem_addr[22] dmem_addr[23] dmem_addr[24] dmem_addr[25] dmem_addr[26] dmem_addr[27] dmem_addr[28] dmem_addr[29] dmem_addr[30]}
editPin -spreadType EDGE -layer metal3 -edge 2 -pin {dmem_write dmem_wmask[0] dmem_wmask[1] dmem_wmask[2] dmem_rdata[0] dmem_rdata[1] dmem_rdata[2] dmem_rdata[3] dmem_rdata[4] dmem_rdata[5] dmem_rdata[6] dmem_rdata[7] dmem_rdata[8] dmem_rdata[9] dmem_rdata[10] dmem_rdata[11] dmem_rdata[12] dmem_rdata[13] dmem_rdata[14] dmem_rdata[15] dmem_rdata[16] dmem_rdata[17] dmem_rdata[18] dmem_rdata[19] dmem_rdata[20] dmem_rdata[21] dmem_rdata[22] dmem_rdata[23] dmem_rdata[24] dmem_rdata[25] dmem_rdata[26] dmem_rdata[27] dmem_rdata[28] dmem_rdata[29] dmem_rdata[30]}
editPin -spreadType EDGE -layer metal3 -edge 3 -pin {dmem_wdata[0] dmem_wdata[1] dmem_wdata[2] dmem_wdata[3] dmem_wdata[4] dmem_wdata[5] dmem_wdata[6] dmem_wdata[7] dmem_wdata[8] dmem_wdata[9] dmem_wdata[10] dmem_wdata[11] dmem_wdata[12] dmem_wdata[13] dmem_wdata[14] dmem_wdata[15] dmem_wdata[16] dmem_wdata[17] dmem_wdata[18] dmem_wdata[19] dmem_wdata[20] dmem_wdata[21] dmem_wdata[22] dmem_wdata[23] dmem_wdata[24] dmem_wdata[25] dmem_wdata[26] dmem_wdata[27] dmem_wdata[28] dmem_wdata[29] dmem_wdata[30]}
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
