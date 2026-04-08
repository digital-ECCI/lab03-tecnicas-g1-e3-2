`timescale 1ns/1ps

module tb_Ejercicio_1;

reg [3:0] bin;
wire [6:0] seg;

integer i;


Ejercicio_1 UUT(
    .binario(bin),
    .Sseg(seg)
);

initial begin
    $dumpfile("Ejercicio_1_tb.vcd");
    $dumpvars(0, tb_Ejercicio_1);

    
    for (i = 0; i < 16; i = i + 1) begin
        bin = i;
        #10;
    end

    $finish;
end

endmodule