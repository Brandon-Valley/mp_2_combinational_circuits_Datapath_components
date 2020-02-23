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
  
  // assign o_f = i_sel_code == 3'b000 ? i_code[0] : 0;
  // assign o_f = i_sel_code == 3'b001 ? i_code[1] : 0;
  // assign o_f = i_sel_code == 3'b010 ? i_code[2] : 0;
  // assign o_f = i_sel_code == 3'b011 ? i_code[3] : 0;
  // assign o_f = i_sel_code == 3'b100 ? i_code[4] : 0;
  // assign o_f = i_sel_code == 3'b101 ? i_code[5] : 0;
  // assign o_f = i_sel_code == 3'b110 ? i_code[6] : 0;
  // assign o_f = i_sel_code == 3'b111 ? i_code[7] : 0;
  
  // assign o_f = i_sel_code == 3'b000 & i_code[0] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b001 & i_code[1] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b010 & i_code[2] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b011 & i_code[3] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b100 & i_code[4] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b101 & i_code[5] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b110 & i_code[6] ? 1 : 0;
  // assign o_f = i_sel_code == 3'b111 & i_code[7] ? 1 : 0;

  assign o_f = i_sel_code == 3'b000 & i_code[0] ? 1 :
               i_sel_code == 3'b001 & i_code[1] ? 1 :
               i_sel_code == 3'b010 & i_code[2] ? 1 :
               i_sel_code == 3'b011 & i_code[3] ? 1 :
               i_sel_code == 3'b100 & i_code[4] ? 1 :
               i_sel_code == 3'b101 & i_code[5] ? 1 :
               i_sel_code == 3'b110 & i_code[6] ? 1 :
               i_sel_code == 3'b111 & i_code[7] ? 1 : 0;
  
  
  
  
  // assign o_f = (i_a & i_sel_code[1]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[2]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[3]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[4]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[5]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[6]) ? 1 : 0;
  // assign o_f = (i_a & i_sel_code[7]) ? 1 : 0;
  
endmodule































