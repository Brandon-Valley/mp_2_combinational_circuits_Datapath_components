library verilog;
use verilog.vl_types.all;
entity deMUX_1_4_v is
    port(
        i_a             : in     vl_logic;
        i_b             : in     vl_logic;
        i_c             : in     vl_logic;
        i_d             : in     vl_logic;
        i_cs            : in     vl_logic;
        i_n_cs_0        : in     vl_logic;
        i_n_cs_1        : in     vl_logic;
        o_0             : out    vl_logic;
        o_1             : out    vl_logic;
        o_2             : out    vl_logic;
        o_3             : out    vl_logic;
        o_4             : out    vl_logic;
        o_5             : out    vl_logic;
        o_6             : out    vl_logic;
        o_7             : out    vl_logic;
        o_8             : out    vl_logic;
        o_9             : out    vl_logic
    );
end deMUX_1_4_v;
