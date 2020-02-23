vsim -voptargs=+acc work.MUX_4_1_8_bit_tb_v
 
add wave -position insertpoint    \
sim:/MUX_4_1_8_bit_tb_v/i_en \
sim:/MUX_4_1_8_bit_tb_v/i_code \
sim:/MUX_4_1_8_bit_tb_v/i_sel_code \
sim:/MUX_4_1_8_bit_tb_v/o_f 


run -all