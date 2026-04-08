`timescale 1s/1s

module Ejercicio_2_tb;

reg [2:0] A;
reg [2:0] B;
wire [6:0] seg;

integer i, j;

    Ejercicio_2 UUT (
    .A(A),
    .B(B),
    .seg(seg)
);

initial begin
    $dumpfile("suma_display.vcd");
    $dumpvars(0, Ejercicio_2_tb);

    A = 0;
    B = 0;

    for (i = 0; i < 8; i = i + 1) begin
        for (j = 0; j < 8; j = j + 1) begin
            A = i;
            B = j;
            #10;
        end
    end

    $finish;
end

endmodule