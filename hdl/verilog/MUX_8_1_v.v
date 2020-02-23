// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_8_1_v.do






// sim:/deMUX_1_8_tb_v/i_code \
// sim:/deMUX_1_8_tb_v/i_sel_code \
// sim:/deMUX_1_8_tb_v/o_f 

//  Behavior Model
module MUX_8_1_v__behavior
  (
  input        i_en,
  input  [7:0] i_code,
  input  [2:0] i_sel_code, 
  output       o_f);
  

  assign o_f = i_sel_code == 3'b000 & i_code[0] & i_en ? 1 :
               i_sel_code == 3'b001 & i_code[1] & i_en ? 1 :
               i_sel_code == 3'b010 & i_code[2] & i_en ? 1 :
               i_sel_code == 3'b011 & i_code[3] & i_en ? 1 :
               i_sel_code == 3'b100 & i_code[4] & i_en ? 1 :
               i_sel_code == 3'b101 & i_code[5] & i_en ? 1 :
               i_sel_code == 3'b110 & i_code[6] & i_en ? 1 :
               i_sel_code == 3'b111 & i_code[7] & i_en ? 1 : 0;
  
endmodule































