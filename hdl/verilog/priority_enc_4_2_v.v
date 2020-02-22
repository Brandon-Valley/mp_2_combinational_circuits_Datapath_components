// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2_v.do

////////////////////////////////
// Equation Model
////////////////////////////////
module priority_enc_4_2_v__equation__no_always
  (input  [3:0] i_code,
   output [1:0] o_code,
   output       o_valid);
   
  // assign o_f = (i_a ^ i_b) ^ (i_c ^ i_d);

  // line 0 hase highest priority
  assign o_code = i_code[0] ? 2'b00:
                  i_code[1] ? 2'b01:
                  i_code[2] ? 2'b10:
                  i_code[3] ? 2'b11:
                  2'b00;
                  
  assign valid  = i_code[0] |
                  i_code[1] |
                  i_code[2] |
                  i_code[3];
                 
endmodule


// ////////////////////////////
// // Behavior Model
// ////////////////////////////
// module priority_enc_4_2_v__behavior
  // (input i_a, i_b, i_c, i_d,
   // output o_f);
   
  // assign o_f = (~ i_a & ~ i_b & ~ i_c &   i_d) | 
               // (~ i_a & ~ i_b &   i_c & ~ i_d) |
               // (~ i_a &   i_b & ~ i_c & ~ i_d) |
               // (  i_a & ~ i_b & ~ i_c & ~ i_d) |
               // (  i_a &   i_b &   i_c & ~ i_d) |
               // (  i_a &   i_b & ~ i_c &   i_d) |
               // (  i_a & ~ i_b &   i_c &   i_d) |
               // (~ i_a &   i_b &   i_c &   i_d) ? 1 : 0;
  
// endmodule









