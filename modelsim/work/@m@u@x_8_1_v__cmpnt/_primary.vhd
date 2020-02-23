library verilog;
use verilog.vl_types.all;
entity \MUX_8_1_v__cmpnt\ is
    port(
        i_en            : in     vl_logic;
        i_code          : in     vl_logic_vector(7 downto 0);
        i_sel_code      : in     vl_logic_vector(2 downto 0);
        o_f             : out    vl_logic
    );
end \MUX_8_1_v__cmpnt\;
