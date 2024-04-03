library ieee;
use ieee.std_logic_1164.all;

entity laboratorio_04 is 
	port( 	KEY: in std_logic_vector(2 downto 0);
		SW: in std_logic_vector(3 downto 0);
		Linha: out std_logic_vector(7 downto 0);
		Coluna: out std_logic_vector(7 downto 0));
end laboratorio_04;

architecture log of laboratorio_04 is


  signal KEY5, KEY4, KEY3, KEY2, KEY1: std_logic;--_vector(2 downto 0);
  signal SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW8, SW9, SWA, SWB, SWC, SWD, SWE, SWF: std_logic;--_vector(3 downto 0);
  

begin 

end log;
