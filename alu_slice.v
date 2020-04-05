module alu_slice (input wire [1:0] op, input wire i0, i1, cin, output wire o, cout);  
wire t_sumdiff, t_and, t_or, t_andor;
addsub _i0 (op[0],i0,i1,cin, t_sumdiff,cout);  
and2 _i1 (i0,i1,t_and);   
or2 _i2 (i0,i1,t_or); 
mux2 _i3 (t_and, t_or,op[0],t_andor);   
mux2 _i4 (t_sumdiff,t_andor,op[1],o);
endmodule