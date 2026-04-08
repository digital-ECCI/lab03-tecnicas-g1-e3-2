module Ejercicio_2 (
    input  [2:0] A,
    input  [2:0] B,
    output [6:0] seg
);

wire [3:0] suma;

assign suma = A + B;

Ejercicio_1_Segunda_P Salida_segmentos (
    .binario(suma),
    .Sseg(seg)
);

endmodule


// 1+1
//7+7
//3+5
//2+1
//3+2
