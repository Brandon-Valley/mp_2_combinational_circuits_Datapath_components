// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__OR4_v.do


`timescale 1ms/1ms

module OR4_tb_v;
  wire o_f;
  // reg i_a, i_b;
  reg i_a, i_b, i_c, i_d;
  reg [1:4] d_in = 4'b0000;
  integer i;
  
  // OR2_v duv (.i_a(i_a), .i_b(i_b), .o_f(o_f)); // port map
  OR4_v_TEST duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d), .o_f(o_f)); // port map

  //procedure statement
  initial begin
            // i_a = 0; i_b = 0; i_c = 0; i_d = 0;
      // #1000      i_a = 0; i_b = 0; i_c = 1; i_d = 0;
      // #1000      i_a = 0; i_b = 1; i_c = 0; i_d = 0;
      // #1000      i_a = 1; i_b = 0; i_c = 0; i_d = 0;
      // // #1000 i_a = 0; i_b = 1;
      // // #1000 i_a = 1; i_b = 0;
      // // #1000 i_a = 1; i_b = 1;
      
      // #1000 $wait;
      
      
      for (i = 0 ; i < 17 ; i = i + 1) begin
        #1000 i_a = d_in[1]; i_b = d_in[2]; i_c = d_in[3]; i_d = d_in[4];
        d_in = d_in +1;
      end
    
    
    end

endmodule
