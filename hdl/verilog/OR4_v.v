module OR4_v
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = i_a | i_b | i_c | i_d;
  
  endmodule