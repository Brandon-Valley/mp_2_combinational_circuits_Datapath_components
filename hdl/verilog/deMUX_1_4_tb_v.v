// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__deMUX_1_4_v.do

`timescale 1ms/1ms

module deMUX_1_4_tb_v;
  
  reg  i_a, i_b, i_c, i_d;
  reg  i_cs, i_n_cs_0, i_n_cs_1;
  wire o_0, o_1, o_2, o_3, o_4, o_5, o_6, o_7, o_8, o_9;
 
  
  // reg i_a, i_b, i_c, i_d;
  reg [6:0] d_in = 4'b0000;
  integer i;
  
  // duv port map options:
  // deMUX_1_4_v__no_always duv (.i_code(i_code), .o_code(o_code), .o_valid(o_valid)); 
  deMUX_1_4_v duv (.i_a(i_a), .i_b(i_b), .i_c(i_c), .i_d(i_d),
                                  .i_cs(i_cs), .i_n_cs_0(i_n_cs_0), .i_n_cs_1(i_n_cs_1),
                                  .o_0 (o_0 ),
                                  .o_1 (o_1 ),
                                  .o_2 (o_2 ),
                                  .o_3 (o_3 ),
                                  .o_4 (o_4 ),
                                  .o_5 (o_5 ),
                                  .o_6 (o_6 ),
                                  .o_7 (o_7 ),
                                  .o_8 (o_8 ),
                                  .o_9 (o_9 )); 
  
  //procedure statement
  initial begin
      
      for (i = 0 ; i < 36 ; i = i + 1) begin
        #1000 i_a = d_in[0]; i_b = d_in[1]; i_c = d_in[2]; i_d = d_in[3]; i_cs = d_in[4]; i_n_cs_0 = d_in[5]; i_n_cs_1 = d_in[6];
        d_in = d_in + 1;
      end
          
    end

endmodule
