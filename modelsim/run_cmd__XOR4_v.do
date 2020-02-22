vsim -voptargs=+acc work.XOR4_tb_v
 
add wave -position insertpoint  \
sim:/XOR4_tb_v/i_a \
sim:/XOR4_tb_v/i_b \
sim:/XOR4_tb_v/i_c \
sim:/XOR4_tb_v/i_d \
sim:/XOR4_tb_v/o_f

run -all