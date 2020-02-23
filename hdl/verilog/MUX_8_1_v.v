// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__MUX_8_1_v.do






// sim:/deMUX_1_8_tb_v/i_code \
// sim:/deMUX_1_8_tb_v/i_sel_code \
// sim:/deMUX_1_8_tb_v/o_f 

//  Behavior Model
module MUX_8_1_v__behavior
  (
  input  [7:0] i_code,
  input  [2:0] i_sel_code, 
  output       o_f);
  
  assign o_f = i_sel_code == 3'b010 ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[1]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[2]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[3]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[4]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[5]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[6]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[7]) ? 1 : 0;
  
endmodule































