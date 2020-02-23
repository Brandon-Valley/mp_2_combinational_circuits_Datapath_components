library verilog;
use verilog.vl_types.all;
entity micro_v is
    port(
        i_en            : in     vl_logic;
        i_code          : in     vl_logic_vector(3 downto 0);
        o_A             : out    vl_logic;
        o_L             : out    vl_logic;
        o_B             : out    vl_logic
    );
end micro_v;
