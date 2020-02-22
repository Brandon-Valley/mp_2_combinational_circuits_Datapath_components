library verilog;
use verilog.vl_types.all;
entity \priority_enc_4_2_v__always\ is
    port(
        i_code          : in     vl_logic_vector(3 downto 0);
        o_code          : out    vl_logic_vector(1 downto 0);
        o_valid         : out    vl_logic
    );
end \priority_enc_4_2_v__always\;
