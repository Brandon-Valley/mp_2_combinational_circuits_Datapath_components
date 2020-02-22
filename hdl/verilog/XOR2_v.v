// -- python C:\Users\Brandon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__XOR4_v.do


    // OR_1  : OR2  port map (i_a,     i_b,     or_1_o );
    // AND_1 : AND2 port map (i_a,     i_b,     and_1_o);
    // NOT_1 : NOT1 port map (and_1_o, not_1_o         );
    // AND_2 : AND2 port map (or_1_o,  not_1_o, o_f    );



module XOR2_v
  (input i_a, i_b,
   output o_f);
   
  // assign o_f = i_a ^ i_b;
  
  wire or1o, and1o, not1o; // internal outputs
   
  OR2_v or1   (i_a  , i_b  , or1o );
  AND2_v and1 (i_a  , i_b  , and1o);
  NOT1_v not1 (and1o, not1o       );
  AND2_v and2 (or1o , not1o, o_f  );
  
  
  
  
  
endmodule







