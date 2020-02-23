// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_4_v.do
// sim:/deMUX_1_4_tb_v/i_a \
// sim:/deMUX_1_4_tb_v/i_sel_code \
// sim:/deMUX_1_4_tb_v/o_code

// behavior model
module deMUX_1_4_v
  (
  input  i_a,
  input  reg [3:0] i_sel_code, 
  output o_code);
  
  assign o_code = 4'b0010;
   
  // assign o_0 = ( ~ i_a & ~ i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_1 = ( ~ i_a & ~ i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_2 = ( ~ i_a & ~ i_b &   i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_3 = ( ~ i_a & ~ i_b &   i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_4 = ( ~ i_a &   i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_5 = ( ~ i_a &   i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_6 = ( ~ i_a &   i_b &   i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_7 = ( ~ i_a &   i_b &   i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_8 = (   i_a & ~ i_b & ~ i_c & ~ i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  // assign o_9 = (   i_a & ~ i_b & ~ i_c &   i_d ) & (i_cs | ~i_n_cs_0 | ~i_n_cs_1) ? 0 : 1;
  
  
  
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
endmodule







