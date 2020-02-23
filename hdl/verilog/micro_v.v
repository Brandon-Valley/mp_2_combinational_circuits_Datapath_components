// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro_v.do

// sim:/micro_tb_v/i_en \
// sim:/micro_tb_v/i_code \
// sim:/micro_tb_v/o_A \
// sim:/micro_tb_v/o_L \
// sim:/micro_tb_v/o_B 

//  Behavior Model
module micro_v
  (
  input        i_en,
  input  [3:0] i_code,
  output       o_A,
  output       o_L,
  output       o_B);
  
  
  assign o_A = 1;
  assign o_L = 1;
  assign o_B = 1;
  
  // assign o_code = i_sel_code == 2'b00 & i_en ? i_code_0 :
                  // i_sel_code == 2'b01 & i_en ? i_code_1 :
                  // i_sel_code == 2'b10 & i_en ? i_code_2 :
                  // i_sel_code == 2'b11 & i_en ? i_code_3 : 8'b00000000;
  
endmodule



