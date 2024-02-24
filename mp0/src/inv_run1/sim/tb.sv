`timescale 1ns / 1ns 

module tb;

    // create top level wires here
    logic Z, A;

    // instantiate your top level here
    inv inv(.Z(Z), .A(A));

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
        // insert your test vector here
        A = #5 1'b0;
        A = #5 1'b1;
        A = #5 1'b0;
        A = #5 1'b1;
        A = #5 1'b0;
        #10;
        $finish;
    end

endmodule
