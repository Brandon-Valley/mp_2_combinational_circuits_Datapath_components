vsim -voptargs=+acc work.priority_enc_4_2_tb
 
add wave -position insertpoint  \
sim:/priority_enc_4_2_tb/i_code \
sim:/priority_enc_4_2_tb/o_code \
sim:/priority_enc_4_2_tb/o_valid


run -all
