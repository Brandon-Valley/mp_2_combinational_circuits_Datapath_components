library verilog;
use verilog.vl_types.all;
entity AND2_v is
    port(
        i_a             : in     vl_logic;
        i_b             : in     vl_logic;
        o_f             : out    vl_logic
    );
end AND2_v;
