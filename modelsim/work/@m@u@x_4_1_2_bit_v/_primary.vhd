library verilog;
use verilog.vl_types.all;
entity MUX_4_1_2_bit_v is
    port(
        i_en            : in     vl_logic;
        i_code_0        : in     vl_logic_vector(1 downto 0);
        i_code_1        : in     vl_logic_vector(1 downto 0);
        i_code_2        : in     vl_logic_vector(1 downto 0);
        i_code_3        : in     vl_logic_vector(1 downto 0);
        i_sel_code      : in     vl_logic_vector(1 downto 0);
        o_code          : out    vl_logic_vector(1 downto 0)
    );
end MUX_4_1_2_bit_v;
