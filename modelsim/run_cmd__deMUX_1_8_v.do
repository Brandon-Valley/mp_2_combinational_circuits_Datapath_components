vsim -voptargs=+acc work.deMUX_1_8_tb_v
 
add wave -position insertpoint    \
sim:/deMUX_1_8_tb_v/i_a \
sim:/deMUX_1_8_tb_v/i_sel_code \
sim:/deMUX_1_8_tb_v/o_code 


run -all