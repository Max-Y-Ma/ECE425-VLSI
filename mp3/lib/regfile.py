function_string = ""
for i in range(32):
    function_string += f"(rf_data[{i}]&rs1_sel[{i}])|"
function_string = function_string[:-1]

# print(function_string)

function_string = ""
for i in range(32):
    function_string += f"(rf_data[{i}]&rs2_sel[{i}])|"
function_string = function_string[:-1]

# print(function_string)

#with open('regfile.txt', 'w') as libfile:
#  for i in range(32):
#    function_string = ""
#    function_string += f'latch (IQL{i}, IQLN{i})' + ' {\n'
#    function_string += f'\t enable : "rd_sel[{i}]";\n'
#    function_string += '\t data_in : "rd_mux_out";\n'
#    function_string += '}\n'
#    libfile.write(function_string)

#with open('regfile.txt', 'w') as libfile:
#  for i in range(32):
#    function_string = ""
#    function_string += f'pin (rf_latch[{i}])' + ' {\n'
#    function_string += f'\t function : "IQL{i}";\n'
#    function_string += '}\n'
#    libfile.write(function_string)

with open('regfile.txt', 'w') as libfile:
  for i in range(32):
    function_string = ""
    function_string += f'ff (IQF{i}, IQFN{i})' + ' {\n'
    function_string += f'\t next_state : "rd_mux_out";\n'
    function_string += f'\t clocked_on : "(clk)";\n'
    function_string += '}\n'
    libfile.write(function_string)

#with open('regfile.txt', 'w') as libfile:
#  for i in range(32):
#    function_string = ""
#    function_string += f'pin (rf_data[{i}])' + ' {\n'
#    function_string += f'\t direction : internal;\n'
#    function_string += f'\t function : "IQF{i}";\n'
#    function_string += '}\n'
#    libfile.write(function_string)