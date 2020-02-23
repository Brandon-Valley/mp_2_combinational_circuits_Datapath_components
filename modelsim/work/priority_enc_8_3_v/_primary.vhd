library verilog;
use verilog.vl_types.all;
entity priority_enc_8_3_v is
    port(
        i_code          : in     vl_logic_vector(7 downto 0);
        o_code          : out    vl_logic_vector(2 downto 0)
    );
end priority_enc_8_3_v;
