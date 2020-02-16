vsim -voptargs=+acc work.OR4_tb_v
 
add wave -position insertpoint  \
sim:/OR4_tb_v/i_a \
sim:/OR4_tb_v/i_b \
sim:/OR4_tb_v/o_f

run -all