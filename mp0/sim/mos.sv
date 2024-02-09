module NMOS_VTL(
    output  wire   D,
    input   wire   B,
    input   wire   G,
    input   wire   S
);

    always_comb begin
        automatic logic wack;
        wack = B;
    end

    always_comb begin
        if (G) begin
            D = S;
        end else if (~G) begin
            D = 1'bz;
        end else begin
            D = 1'bx;
        end
    end

endmodule

module PMOS_VTL(
    output  wire   D,
    input   wire   B,
    input   wire   G,
    input   wire   S
);

    always_comb begin
        automatic logic wack;
        wack = B;
    end

    always_comb begin
        if (G) begin
            D = 1'bz;
        end else if (~G) begin
            D = S;
        end else begin
            D = 1'bx;
        end
    end

endmodule