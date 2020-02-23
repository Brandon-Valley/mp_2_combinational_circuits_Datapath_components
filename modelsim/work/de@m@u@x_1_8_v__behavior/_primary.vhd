library verilog;
use verilog.vl_types.all;
entity \deMUX_1_8_v__behavior\ is
    port(
        i_a             : in     vl_logic;
        i_sel_code      : in     vl_logic_vector(7 downto 0);
        o_code          : out    vl_logic_vector(7 downto 0)
    );
end \deMUX_1_8_v__behavior\;
