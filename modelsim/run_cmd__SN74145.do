vsim -voptargs=+acc work.SN74145_tb
 
add wave -position insertpoint  \
sim:/SN74145_tb/i_a \
sim:/SN74145_tb/i_b \
sim:/SN74145_tb/i_c \
sim:/SN74145_tb/i_d \
sim:/SN74145_tb/i_cs \
sim:/SN74145_tb/i_n_cs_0 \
sim:/SN74145_tb/i_n_cs_1 \
sim:/SN74145_tb/o_0 \
sim:/SN74145_tb/o_1 \
sim:/SN74145_tb/o_2 \
sim:/SN74145_tb/o_3 \
sim:/SN74145_tb/o_4 \
sim:/SN74145_tb/o_5 \
sim:/SN74145_tb/o_6 \
sim:/SN74145_tb/o_7 \
sim:/SN74145_tb/o_8 \
sim:/SN74145_tb/o_9 
                
                
run -all            