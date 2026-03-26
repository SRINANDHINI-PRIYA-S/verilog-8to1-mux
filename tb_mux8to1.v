`timescale 1ns/1ps

module tb_mux8to1;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;
wire Y;

mux8to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .Y(Y)
);

initial begin
    $display("Time\tS2 S1 S0\tI0 I1 I2 I3 I4 I5 I6 I7\tY");
    $monitor("%0t\t%b  %b  %b\t%b  %b  %b  %b  %b  %b  %b  %b\t%b",
             $time, S2, S1, S0, I0, I1, I2, I3, I4, I5, I6, I7, Y);

    // Test case 1
    I0=1; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0;
    S2=0; S1=0; S0=0; #10;

    // Test case 2
    I0=0; I1=1; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0;
    S2=0; S1=0; S0=1; #10;

    // Test case 3
    I0=0; I1=0; I2=1; I3=0; I4=0; I5=0; I6=0; I7=0;
    S2=0; S1=1; S0=0; #10;

    // Test case 4
    I0=0; I1=0; I2=0; I3=1; I4=0; I5=0; I6=0; I7=0;
    S2=0; S1=1; S0=1; #10;

    // Test case 5
    I0=0; I1=0; I2=0; I3=0; I4=1; I5=0; I6=0; I7=0;
    S2=1; S1=0; S0=0; #10;

    // Test case 6
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=1; I6=0; I7=0;
    S2=1; S1=0; S0=1; #10;

    // Test case 7
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=1; I7=0;
    S2=1; S1=1; S0=0; #10;

    // Test case 8
    I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=1;
    S2=1; S1=1; S0=1; #10;

    $finish;
end

endmodule
