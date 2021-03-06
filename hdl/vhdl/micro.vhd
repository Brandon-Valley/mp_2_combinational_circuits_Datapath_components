-- python C:\Users\BrANDon\Documents\Personal_Projects\my_utils\modelsim_utils\auto_run.py -d run_cmd__micro.do
library ieee;
use ieee.std_logic_1164.all;


entity micro is
  port ( 
  
        i_en   : in  std_logic;
        i_code : in  std_logic_vector(3 downto 0);
        o_A    : out std_logic;
        o_L    : out std_logic;
        o_B    : out std_logic);

end micro;


architecture equation of micro is
  begin

    o_A <= 'Z' when i_en = '0'      else
           '1' when i_code = "1010" or
                    i_code = "1011" or
                    i_code = "1100" else '0';
       
    o_L <= 'Z' when i_en = '0'      else
           '1' when i_code = "0011" or
                    i_code = "0100" or
                    i_code = "0010" or
                    i_code = "1110" else '0';
                
    o_B <= 'Z' when i_en = '0'      else
           '1' when i_code = "1111" else '0';                

    
    
end architecture equation;
