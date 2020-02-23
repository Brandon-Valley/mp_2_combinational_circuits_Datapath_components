vsim -voptargs=+acc work.priority_enc_8_3_tb_v
 
add wave -position insertpoint    \
sim:/priority_enc_8_3_tb_v/i_code \
sim:/priority_enc_8_3_tb_v/o_code 

run -all