vsim -voptargs=+acc work.micro_tb_v
 
add wave -position insertpoint    \
sim:/micro_tb_v/i_en \
sim:/micro_tb_v/i_code_0 \
sim:/micro_tb_v/i_code_1 \
sim:/micro_tb_v/i_code_2 \
sim:/micro_tb_v/i_code_3 \
sim:/micro_tb_v/i_sel_code \
sim:/micro_tb_v/o_code 


run -all