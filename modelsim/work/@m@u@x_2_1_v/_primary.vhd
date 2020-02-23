library verilog;
use verilog.vl_types.all;
entity MUX_2_1_v is
    port(
        i_en            : in     vl_logic;
        i_code          : in     vl_logic_vector(1 downto 0);
        i_sel           : in     vl_logic;
        o_f             : out    vl_logic
    );
end MUX_2_1_v;
