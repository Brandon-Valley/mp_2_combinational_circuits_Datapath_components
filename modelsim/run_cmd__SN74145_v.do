vsim -voptargs=+acc work.SN74145_tb_v
 
add wave -position insertpoint    \
sim:/SN74145_tb_v/i_a \
sim:/SN74145_tb_v/i_b \
sim:/SN74145_tb_v/i_c \
sim:/SN74145_tb_v/i_d \
sim:/SN74145_tb_v/i_cs \
sim:/SN74145_tb_v/i_n_cs_0 \
sim:/SN74145_tb_v/i_n_cs_1 \
sim:/SN74145_tb_v/o_0 \
sim:/SN74145_tb_v/o_1 \
sim:/SN74145_tb_v/o_2 \
sim:/SN74145_tb_v/o_3 \
sim:/SN74145_tb_v/o_4 \
sim:/SN74145_tb_v/o_5 \
sim:/SN74145_tb_v/o_6 \
sim:/SN74145_tb_v/o_7 \
sim:/SN74145_tb_v/o_8 \
sim:/SN74145_tb_v/o_9 



run -all