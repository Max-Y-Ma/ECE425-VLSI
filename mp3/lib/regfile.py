function_string = ""
for i in range(32):
    function_string += f"(rf_data[{i}]&rs1_sel[{i}])|"
function_string = function_string[:-1]

print(function_string)

function_string = ""
for i in range(32):
    function_string += f"(rf_data[{i}]&rs2_sel[{i}])|"
function_string = function_string[:-1]

print(function_string)