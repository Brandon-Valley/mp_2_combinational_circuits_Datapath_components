library verilog;
use verilog.vl_types.all;
entity priority_enc_2_1_v is
    port(
        i_code          : in     vl_logic_vector(1 downto 0);
        i_sel           : in     vl_logic;
        o_f             : out    vl_logic
    );
end priority_enc_2_1_v;
