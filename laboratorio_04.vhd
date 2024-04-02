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

	KEY5 <=     KEY(2)  and not(KEY(1)) and     KEY(0) ;
	KEY4 <=     KEY(2)  and not(KEY(1)) and not(KEY(0));
	KEY3 <= not(KEY(2)) and     KEY(1)  and     KEY(0) ;
	KEY2 <= not(KEY(2)) and     KEY(1)  and not(KEY(0));
	KEY1 <= not(KEY(2)) and not(KEY(1)) and     KEY(0) ;
	--KEY0 <= not(KEY(2)) and not(KEY(1)) and not(KEY(0));

	SW0 <= not(SW(3)) and not(SW(2)) and not(SW(1)) and not(SW(0));
	SW1 <= not(SW(3)) and not(SW(2)) and not(SW(1)) and     SW(0) ;
	SW2 <= not(SW(3)) and not(SW(2)) and     SW(1)  and not(SW(0));
	SW3 <= not(SW(3)) and not(SW(2)) and     SW(1)  and     SW(0) ;
	SW4 <= not(SW(3)) and     SW(2)  and not(SW(1)) and not(SW(0));
	SW5 <= not(SW(3)) and     SW(2)  and not(SW(1)) and     SW(0) ;
	SW6 <= not(SW(3)) and     SW(2)  and     SW(1)  and not(SW(0));
	SW7 <= not(SW(3)) and     SW(2)  and     SW(1)  and     SW(0) ;
	SW8 <=     SW(3)  and not(SW(2)) and not(SW(1)) and not(SW(0));
	SW9 <=     SW(3)  and not(SW(2)) and not(SW(1)) and     SW(0) ;
	SWA <=     SW(3)  and not(SW(2)) and     SW(1)  and not(SW(0));
	SWB <=     SW(3)  and not(SW(2)) and     SW(1)  and     SW(0) ;
	SWC <=     SW(3)  and     SW(2)  and not(SW(1)) and not(SW(0));
	SWD <=     SW(3)  and     SW(2)  and not(SW(1)) and     SW(0) ;
	SWE <=     SW(3)  and     SW(2)  and     SW(1)  and not(SW(0));
	SWF <=     SW(3)  and     SW(2)  and     SW(1)  and     SW(0) ;
	
		      
	Linha(6) <= KEY5 and SW5;
end log;
