vsim -voptargs=+acc work.NAND4_tb_v
 
add wave -position insertpoint  \
sim:/NAND4_tb_v/i_a \
sim:/NAND4_tb_v/i_b \
sim:/NAND4_tb_v/i_c \
sim:/NAND4_tb_v/i_d \
sim:/NAND4_tb_v/o_f

run -all