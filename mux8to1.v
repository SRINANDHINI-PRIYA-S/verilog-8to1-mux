module mux8to1 (
    input wire I0,
    input wire I1,
    input wire I2,
    input wire I3,
    input wire I4,
    input wire I5,
    input wire I6,
    input wire I7,
    input wire S0,
    input wire S1,
    input wire S2,
    output wire Y
);

assign Y = (~S2 & ~S1 & ~S0 & I0) |
           (~S2 & ~S1 &  S0 & I1) |
           (~S2 &  S1 & ~S0 & I2) |
           (~S2 &  S1 &  S0 & I3) |
           ( S2 & ~S1 & ~S0 & I4) |
           ( S2 & ~S1 &  S0 & I5) |
           ( S2 &  S1 & ~S0 & I6) |
           ( S2 &  S1 &  S0 & I7);

endmodule
