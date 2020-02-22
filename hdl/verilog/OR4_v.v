

////////////////////////////////
// Equation Model
////////////////////////////////
module OR4_v__equation
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = i_a | i_b | i_c | i_d;
  
endmodule


////////////////////////////////
// Behavior Model
////////////////////////////////
module OR4_v__behavior
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = 1 ? i_a | i_b | i_c | i_d : 0;
  
  
  
endmodule

































