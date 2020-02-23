library verilog;
use verilog.vl_types.all;
entity deMUX_1_4_v is
    port(
        i_a             : in     vl_logic;
        i_sel_code      : in     vl_logic_vector(3 downto 0);
        o_a             : out    vl_logic;
        o_b             : out    vl_logic;
        o_c             : out    vl_logic;
        o_d             : out    vl_logic
    );
end deMUX_1_4_v;
