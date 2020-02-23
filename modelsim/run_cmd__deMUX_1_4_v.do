vsim -voptargs=+acc work.deMUX_1_4_tb_v
 
add wave -position insertpoint    \
sim:/deMUX_1_4_tb_v/i_a \
sim:/deMUX_1_4_tb_v/i_sel_code \
sim:/deMUX_1_4_tb_v/o_a \
sim:/deMUX_1_4_tb_v/o_b \
sim:/deMUX_1_4_tb_v/o_c \
sim:/deMUX_1_4_tb_v/o_d 


run -all