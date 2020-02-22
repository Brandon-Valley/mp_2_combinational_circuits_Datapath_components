// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__NAND4_v.do

////////////////////////////////
// Equation Model
////////////////////////////////
module NAND4_v__equation
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = ~(i_a & i_b & i_c & i_d);
  
endmodule


////////////////////////////////
// Behavior Model
////////////////////////////////
module NAND4_v__behavior
  (input i_a, i_b, i_c, i_d,
   output o_f);
   
  assign o_f = i_a & i_b & i_c & i_d ? 0 : 1;
  // assign o_f = 0 ? i_a & i_b & i_c & i_d : 1;
  // assign o_f = 0 ? i_a  : 1;
  
endmodule



////////////////////////////////
// Component Model - Self
////////////////////////////////
module NAND4_v__cmpnt_self
  (input i_a, i_b, i_c, i_d,
  output o_f);
   
  wire fi1, fi2, fi3, fi4; // internal outputs
  
    // NAND2_1 : NAND2 port map (i_a,   i_b,   f_1_o);
    // NAND2_2 : NAND2 port map (f_1_o, f_1_o, f_2_o); -- NOT
    // NAND2_3 : NAND2 port map (i_c,   i_d,   f_3_o);
    // NAND2_4 : NAND2 port map (f_3_o, f_3_o, f_4_o); -- NOT
    // NAND2_5 : NAND2 port map (f_2_o, f_4_o, o_f);
   
  NAND2_v nand1 (i_a, i_b, fi1);
  NAND2_v nand2 (fi1, fi1, fi2); // NOT
  NAND2_v nand3 (i_c, i_d, fi3);
  NAND2_v nand4 (fi3, fi3, fi4); // NOT
  NAND2_v nand5 (fi2, fi4, o_f);
  
  // assign o_f = 1 ? i_a | i_b | i_c | i_d : 0;
  
endmodule






