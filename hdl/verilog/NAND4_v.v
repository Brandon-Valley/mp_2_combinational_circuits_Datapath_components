

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



// ////////////////////////////////
// // Component Model - Self
// ////////////////////////////////
// module NAND4_v__cmpnt_self
  // (input i_a, i_b, i_c, i_d,
  // output o_f);
   
  // wire fi1, fi2; // internal outputs
   
  // OR2_v or1 (i_a, i_b, fi1);
  // OR2_v or2 (i_c, i_d, fi2);
  // OR2_v or3 (fi1, fi2, o_f);
  
  // // assign o_f = 1 ? i_a | i_b | i_c | i_d : 0;
  
// endmodule






