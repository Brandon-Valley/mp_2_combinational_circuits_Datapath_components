// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__priority_enc_4_2_v.do

////////////////////////////////
// Not Using Always
////////////////////////////////
module priority_enc_4_2_v__no_always
  (input  [3:0] i_code,
   output [1:0] o_code,
   output       o_valid);
   
  // line 0 hase highest priority
  assign o_code = i_code[0] ? 2'b00:
                  i_code[1] ? 2'b01:
                  i_code[2] ? 2'b10:
                  i_code[3] ? 2'b11:
                  2'b00;
                  
  assign o_valid  = i_code[0] |
                    i_code[1] |
                    i_code[2] |
                    i_code[3];
                 
endmodule


////////////////////////////////
// Using Always
////////////////////////////////
module priority_enc_4_2_v__always (
  input  [3:0] i_code,
  output reg [1:0] o_code,
  output       o_valid);
   
  always @*
    case (i_code)
      4'b0000 : o_code = 2'b00;
      4'b0001 : o_code = 2'b00;
      4'b0010 : o_code = 2'b01;
      4'b0011 : o_code = 2'b00;
      4'b0100 : o_code = 2'b10;
      4'b0101 : o_code = 2'b00;
      4'b0110 : o_code = 2'b01;
      4'b0111 : o_code = 2'b00;
      4'b1000 : o_code = 2'b11;
      4'b1001 : o_code = 2'b00;
      4'b1010 : o_code = 2'b01;
      4'b1011 : o_code = 2'b00;
      4'b1100 : o_code = 2'b10;
      4'b1101 : o_code = 2'b00;
      4'b1110 : o_code = 2'b01;
      4'b1111 : o_code = 2'b00;
    endcase
   
  assign o_valid = i_code[0];
   
   
   
   
   
  // // line 0 hase highest priority
  // assign o_code = i_code[0] ? 2'b00:
                  // i_code[1] ? 2'b01:
                  // i_code[2] ? 2'b10:
                  // i_code[3] ? 2'b11:
                  // 2'b00;
                  
  // assign o_valid  = i_code[0] |
                    // i_code[1] |
                    // i_code[2] |
                    // i_code[3];
                 
endmodule










