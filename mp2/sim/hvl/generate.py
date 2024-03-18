for i in range(32):
    for j in range(5):
        if (i - 2**j) < 0:
            print(f"shift_in_from_right[{i}][{j}] = 1'b0;")
        else:
            print(f"shift_in_from_right[{i}][{j}] = shift_out[{5*(i-2**j) + j}];")
    print()
            
for i in range(32):
    for j in range(5):            
        if (i + 2**j) > 31:
            print(f"shift_in_from_left[{i}][{j}] = shift_msb;")
        else:
            print(f"shift_in_from_left[{i}][{j}] = shift_out[{5*(i+2**j) + j}];")
    print()

for i in range(32):
    print(f"shift_out<{i*5}:{(i+1)*5-1}>")