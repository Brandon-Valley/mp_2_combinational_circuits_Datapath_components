vsim -voptargs=+acc work.priority_enc_4_2_tb_v
 
add wave -position insertpoint    \
sim:/priority_enc_4_2_tb_v/i_code \
sim:/priority_enc_4_2_tb_v/o_code \
sim:/priority_enc_4_2_tb_v/o_valid

run -all