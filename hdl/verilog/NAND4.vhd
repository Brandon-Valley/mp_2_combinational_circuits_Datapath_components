
library ieee;
use ieee.std_logic_1164.all;


entity NAND4 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end NAND4;


--------------------------------
-- Equation Model
--------------------------------

architecture equation of NAND4 is
  begin
    o_f <= not (i_a and i_b and i_c and i_d);
end architecture equation;



--------------------------------
-- Behavior Model
--------------------------------
architecture behavior of NAND4 is
  begin
    o_f <= '0' when (i_a = '1' and 
                     i_b = '1' and 
                     i_c = '1' and 
                     i_d = '1')
               else
           '1';
end architecture behavior;



--------------------------------
-- Component Model - Primitive
--------------------------------
architecture cmpnt_prim of NAND4 is
  component AND2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component AND2;
    
  component NOT1 is
    port ( i_a : in  std_logic;
           o_f : out std_logic);
  end component NOT1;
    
  -- temp outs for AND2s
  signal f_1_o : std_logic; 
  signal f_2_o : std_logic; 
  signal f_3_o : std_logic; 
    
  begin
    AND2_1 : AND2 port map (i_a,   i_b,   f_1_o);
    AND2_2 : AND2 port map (i_c,   i_d,   f_2_o);
    AND2_3 : AND2 port map (f_1_o, f_2_o, f_3_o);
    NOT1_1 : NOT1 port map (f_3_o, o_f);
end architecture cmpnt_prim;
    
    
--------------------------------
-- Component Model - 2 Input Self
--------------------------------
architecture cmpnt_self of NAND4 is
  component NAND2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component NAND2;
    
  -- temp outs for AND2s
  signal f_1_o : std_logic; 
  signal f_2_o : std_logic; 
  signal f_3_o : std_logic; 
  signal f_4_o : std_logic; 
    
  begin
    NAND2_1 : NAND2 port map (i_a,   i_b,   f_1_o);
    NAND2_2 : NAND2 port map (f_1_o, f_1_o, f_2_o); -- NOT
    NAND2_3 : NAND2 port map (i_c,   i_d,   f_3_o);
    NAND2_4 : NAND2 port map (f_3_o, f_3_o, f_4_o); -- NOT
    NAND2_5 : NAND2 port map (f_2_o, f_4_o, o_f);
end architecture cmpnt_self;
    








