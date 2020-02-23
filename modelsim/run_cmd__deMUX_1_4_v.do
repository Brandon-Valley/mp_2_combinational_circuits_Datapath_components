vsim -voptargs=+acc work.deMUX_1_4_tb_v
 
add wave -position insertpoint    \
sim:/deMUX_1_4_tb_v/i_a \
sim:/deMUX_1_4_tb_v/i_b \
sim:/deMUX_1_4_tb_v/i_c \
sim:/deMUX_1_4_tb_v/i_d \
sim:/deMUX_1_4_tb_v/i_cs \
sim:/deMUX_1_4_tb_v/i_n_cs_0 \
sim:/deMUX_1_4_tb_v/i_n_cs_1 \
sim:/deMUX_1_4_tb_v/o_0 \
sim:/deMUX_1_4_tb_v/o_1 \
sim:/deMUX_1_4_tb_v/o_2 \
sim:/deMUX_1_4_tb_v/o_3 \
sim:/deMUX_1_4_tb_v/o_4 \
sim:/deMUX_1_4_tb_v/o_5 \
sim:/deMUX_1_4_tb_v/o_6 \
sim:/deMUX_1_4_tb_v/o_7 \
sim:/deMUX_1_4_tb_v/o_8 \
sim:/deMUX_1_4_tb_v/o_9 



run -all