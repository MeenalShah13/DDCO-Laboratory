module full_adder_join(fsum,fcarry_out,a,b,c);
input a,b,c;
output fsum,fcarry_out;
wire half_sum_1,half_carry_1,half_carry_2;
half_adder g1(half_sum_1,half_carry_1,a,b);
half_adder g2(fsum,half_carry_2,half_sum_1,c);
or g3(fcarry_out,half_carry_1,half_carry_2);
endmodule
