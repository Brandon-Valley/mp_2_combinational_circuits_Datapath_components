// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__OR4_v.do


`timescale 1ms/1ms

module OR4_tb_v;
  wire o_f;
  reg i_a, i_b;
  
OR2_v duv (.i_a(i_a), .i_b(i_b), .o_f(o_f)); // port map

//procedure statement
initial begin
        i_a = 0; i_b = 0;
  #1000 i_a = 0; i_b = 1;
  #1000 i_a = 1; i_b = 0;
  #1000 i_a = 1; i_b = 1;
  
  #1000 $wait;
  end

endmodule
