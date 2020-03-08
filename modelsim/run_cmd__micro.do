vsim -voptargs=+acc work.micro_tb
 
add wave -position insertpoint    \
sim:/micro_tb/i_en \
sim:/micro_tb/i_code \
sim:/micro_tb/o_A \
sim:/micro_tb/o_L \
sim:/micro_tb/o_B 


run -all