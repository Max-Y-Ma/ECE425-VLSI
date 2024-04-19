# From Right to Left
pinListLeft = [
    "clk",
    "rst",
    "imem_addr[31]",
]

pinListTop = [
    "imem_rdata[31]",
    "dmem_addr[31]",
]

pinListRight = [
    "dmem_write",
    "dmem_wmask[3]",
    "dmem_rdata[31]",
]

pinListBottom = [
    "dmem_wdata[31]"
]

pinList = [pinListLeft, pinListTop, pinListRight, pinListBottom]

# Open a file in write mode ('w')
args = "-spreadType EDGE -layer metal3"
with open('control_pins.txt', 'w') as pinfile:
    pinfile.write(f"setPinAssignMode -pinEditInBatch true\n")

    side_index = 0
    for side in pinList:
        pin_string = "{"
        for pin in side:
            if "[" in pin:
                count = int(pin.split("[")[1][:-1])
                pin_name = pin.split("[")[0]
                for i in range(count):
                    pin_string += f"{pin_name}[{i}] "
            else:
                pin_string += f"{pin} "
        pin_string = pin_string[:-1]
        pin_string += "}"
    
        pinfile.write(f"editPin {args} -edge {side_index} -pin {pin_string}\n")
        side_index += 1

    pinfile.write(f"setPinAssignMode -pinEditInBatch false\n")
