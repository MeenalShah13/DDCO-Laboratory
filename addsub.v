module addsub (input wire addsub, i0, i1, cin, output wire sumdiff, cout);  
wire t; 
fa _i0 (i0,t,cin,sumdiff,cout);  
xor2 _i1 (i1,addsub,t);
endmodule