vsim -voptargs=+acc work.micro_tb_v
 
add wave -position insertpoint    \
sim:/micro_tb_v/i_en \
sim:/micro_tb_v/i_code \
sim:/micro_tb_v/o_A \
sim:/micro_tb_v/o_L \
sim:/micro_tb_v/o_B 


run -all