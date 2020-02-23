// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__SN74145_v.do

// 


// behavior model
module SN74145_v
  (
  input  i_a, i_b, i_c, i_d,
  input  i_cs, i_n_cs_0, i_n_cs_1, 
  output o_0, o_1, o_2, o_3, o_4, o_5, o_6, o_7, o_8, o_9);
   
  assign o_0 = ( ~ i_a & ~ i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  assign o_1 = 1;
  assign o_2 = 1;
  assign o_3 = 1;
  assign o_4 = 1;
  assign o_5 = 1;
  assign o_6 = 1;
  assign o_7 = 1;
  assign o_8 = 1;
  assign o_9 = 1;
  
 

                 
endmodule


// ////////////////////////////////
// // Using Always
// ////////////////////////////////
// module SN74145_v__always (
  // input  [3:0] i_code,
  // output reg [1:0] o_code,
  // output reg     o_valid);

  // always @*
    // case (i_code)
      // 4'b0000 : begin o_code = 2'b00; o_valid = 0; end
      // 4'b0001 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b0010 : begin o_code = 2'b01; o_valid = 1; end
      // 4'b0011 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b0100 : begin o_code = 2'b10; o_valid = 1; end
      // 4'b0101 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b0110 : begin o_code = 2'b01; o_valid = 1; end
      // 4'b0111 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b1000 : begin o_code = 2'b11; o_valid = 1; end
      // 4'b1001 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b1010 : begin o_code = 2'b01; o_valid = 1; end
      // 4'b1011 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b1100 : begin o_code = 2'b10; o_valid = 1; end
      // 4'b1101 : begin o_code = 2'b00; o_valid = 1; end
      // 4'b1110 : begin o_code = 2'b01; o_valid = 1; end
      // 4'b1111 : begin o_code = 2'b00; o_valid = 1; end
    // endcase
                 
// endmodule










