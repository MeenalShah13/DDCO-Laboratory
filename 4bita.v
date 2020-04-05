//timescale 1ns/1ps
module fa4 (input wire [3:0] A, B, input wire Cin, output wire [3:0] Sum, output wire Cout);
//input [3:0] A,B;
//input Cin;
//output [3:0]Sum;
//output Cout;
wire [2:0]transferC;
full_adder_join g1(Sum[0],transferC[0],A[0],B[0],Cin);
full_adder_join g2(Sum[1],transferC[1],A[1],B[1],transferC[0]);
full_adder_join g3(Sum[2],transferC[2],A[2],B[2],transferC[1]);
full_adder_join g4(Sum[3],Cout,A[3],B[3],transferC[2]);
endmodule
