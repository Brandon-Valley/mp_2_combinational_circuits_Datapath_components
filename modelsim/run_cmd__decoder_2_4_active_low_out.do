#vsim -voptargs=+acc work.decoder_2_4_active_low_out_tb
# 
#add wave -position insertpoint    \
#sim:/decoder_2_4_active_low_out_tb/i_code \
#sim:/decoder_2_4_active_low_out_tb/0_code_n
#
#run -all


vsim -voptargs=+acc work.decoder_2_4_active_low_out_tb
 
add wave -position insertpoint    \
sim:/decoder_2_4_active_low_out_tb/i_code \
sim:/decoder_2_4_active_low_out_tb/o_code_n 



run -all