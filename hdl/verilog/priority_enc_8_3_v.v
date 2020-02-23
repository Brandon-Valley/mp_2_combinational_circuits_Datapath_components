// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_8_3_v.do

////////////////////////////////
// Not Using Always
////////////////////////////////
module priority_enc_8_3_v
  (
  input  [7:0] i_code,
  output [2:0] o_code);
  
  assign o_code = 3'b010;
   
   
   
   
   
   
  // // behavior model
  // // line 0 hase highest priority
  // assign o_code = i_code[0] ? 2'b00:
                  // i_code[1] ? 2'b01:
                  // i_code[2] ? 2'b11:
                  // 2'b00;
           
  // // equation model
  // assign o_valid  = i_code[0] |
                    // i_code[1] |
                    // i_code[2] |
                    // i_code[3];
                 
endmodule

   
  // wire fi1, fi2, fi3, fi4; // internal outputs
   
  // NAND2_v nand1 (i_a, i_b, fi1);
  // NAND2_v nand2 (fi1, fi1, fi2); // NOT
  // NAND2_v nand3 (i_c, i_d, fi3);
  // NAND2_v nand4 (fi3, fi3, fi4); // NOT
  // NAND2_v nand5 (fi2, fi4, o_f);






