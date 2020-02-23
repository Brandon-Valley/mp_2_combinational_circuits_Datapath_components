vsim -voptargs=+acc work.MUX_8_1_tb_v
 
add wave -position insertpoint    \
sim:/MUX_8_1_tb_v/i_en \
sim:/MUX_8_1_tb_v/i_code \
sim:/MUX_8_1_tb_v/i_sel_code \
sim:/MUX_8_1_tb_v/o_f 


run -all