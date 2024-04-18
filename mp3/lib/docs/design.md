✅ 🟨 ❌

# Standard Cell Liberty Timing File (.lib)
- ✅ Create an entry for every single standard cell
    - Cell name and pin name should match the `Virtuoso Library`
    - Fill in area information
    - Example: This is an example from `gscl45nm.lib`
        - cell (AND2X2) {
            area : 2.815800;
            pin(A)  {
                direction : input;
            }
            pin(B)  {
                direction : input;
            }
            pin(Y)  {
                direction : output;
                function : "(A B)";
            }
        }
    - Example:  This is an example from the original `stdcells.lib`
        - cell (NOR2) {
            area : 1;
            pin(A)  {
                direction : input;
            }
            pin(B)  {
                direction : input;
            }
            pin(Z)  {
                direction : output;
                function : "(!(A+B))";
                timing() {
                    related_pin : "A B";
                    cell_rise(scalar) {
                        values("0.0");
                    }
                    rise_transition(scalar) {
                        values("0.0");
                    }
                    cell_fall(scalar) {
                        values("0.0");
                    }
                    fall_transition(scalar) {
                        values("0.0");
                    }
                }
            }
        }
- ✅ Run `lc_shell -batch -f lc.tcl` to compile to accepted format

#  Standard Cell Library Exchange Format (.lef)
- The technology `.lef` contains information about the manufacturing process we are using. 
    - For example: what the vias look like, what the basic DRC rules are, etc.
- The cells portion describes the layout of your cells in two parts
    - The pins, which show the layer and the shapes of the connections 
    - The blockages/obstructions, which describes metals used inside to make the standard cell work.
- ❌ Follow the tutorial on extracting the `.lef` for the Virtuoso Standard Cell Library

# Auto PnR Controller
- ❌ Run Design Compiler on `controller.sv` to obtain the gate level netlist
- ❌ Launch Innovus inside the `pnr` directory
- ❌ Complete the `pnr.tcl` script using the `man <command>` pages
- ❌ Make a copy of the Virtuoso Library in preparation to import `Innovus GDS`
- ❌ Import the generated `GFSII` file into Virtuoso

# Controller and Datapath Integration
- ❌ Modify the PnR controller floorplan to optimize for `datapath` integration
- ❌ Export controller to Virtuoso and complete layout with datapath
    - Pass LVS?

# Auto PnR Full CPU with only standard cell
- ❌ Modify `pnr.tcl` to layout the entire CPU (controller + datapath)
- ❌ Export to Virtuoso

# Auto PnR Full CPU with your register file
- ❌ Complete the provided `regfile.lib` 
- ❌ Export `regfile.lef` from Virtuoso without exporting the technology information
- ❌ Synthesize custom regfile by referencing same name as `regfile.lib` 
    - Remove existing regfile stub
    - Compile `regfile.lib` to `.db` format
- ❌ Modify `pnr.tcl` to layout the entire CPU (controller + datapath) and custom register file
