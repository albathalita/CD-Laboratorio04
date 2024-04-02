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
	
		      
	Linha(6) <= (KEY5 and (SW5 or SW7 or SWB)) or
		    (KEY4 and (SW0 or SW2 or SW3 or SW5 or SW7 or SW8 or SW9)) or
		    (KEY3 and (SW0 or SW1 or SW2 or SW3 or SW5 or SW6 or SW7 or SW8 or SW9)) or
		    (KEY2 and (SW0 or SW2 or SW3 or SW4 or SW5 or SW6 or SW7 or SW8 or SW9 or SWF)) or
		    (KEY1 and (SW5 or SW7 or SWD)) ;

		      
	Linha(5) <= (KEY5 and (SW0 or SW2 or SW3 or SW5 or SW8 or SW9 or SWB)) or
		    (KEY4 and (SW1 or SW6)) or
		    (KEY3 and (SW1 or SW4 or SWF)) or
		    (KEY2 and (SW4)) or
		    (KEY1 and (SW0 or SW2 or SW3 or SW7 or SW8 or SW9 or SWD or SWF)) ;
		      
	Linha(4) <= (KEY5 and (SW0 or SW5 or SW6 or SW8 or SW9 or SWB)) or
		    (KEY4 and (SW4 or SW5 or SWA or SWC or SWD or SWE)) or
		    (KEY3 and (SW1 or SW5 or SWA or SWB or SWC or SWD or SWE or SWF)) or
		    (KEY2 and (SW0 or SW4 or SW5 or SW7 or SWB or SWC or SWE)) or
		    (KEY1 and (SW0 or SW2 or SW3 or SW8 or SW9 or SWD)) ;
		      
	Linha(3) <= (KEY5 and (SW0 or SW4 or SW6 or SWB or SWC or SWD or SWE)) or
		    (KEY4 and (SW3 or SW6 or SW8 or SW9 or SWB or SWF)) or
		    (KEY3 and (SW0 or SW1 or SW2 or SW3 or SW6 or SW7 or SW8 or SW9 or SWF)) or
		    (KEY2 and (SW2 or SW3 or SW4 or SW6 or SW8 or SW9 or SWA or SWD or SWF)) or
		    (KEY1 and (SW0 or SW5 or SW9 or SWB or SWD or SWE)) ;
		      
	Linha(2) <= (KEY5 and (SW0 or SW4 or SW6 or SW8 or SWB or SWC or SWD or SWE)) or
		    (KEY4 and (SW0 or SW2 or SW4 or SW7 or SWA or SWE)) or
		    (KEY3 and (SW1 or SW4 or SWA or SWE or SWF)) or
		    (KEY2 and (SW4 or SWA or SWE)) or
		    (KEY1 and (SW0 or SW3 or SW4 or SW5 or SW6 or SW8 or SW9 or SWB or SWD)) ;
		      
	Linha(1) <= (KEY5 and (SW0 or SW2 or SW3 or SW5 or SW6 or SW8 or SWA or SWB or SWC or SWD or SWE)) or
		    (KEY4 and (SW7)) or
		    (KEY3 and (SW1 or SWF)) or
		    (KEY2 and (SW4 or SW9 or SWA)) or
		    (KEY1 and (SW0 or SW3 or SW5 or SW6 or SW8 or SWB or SWC or SWD)) ;
		      
	Linha(0) <= (KEY5 and (SW2 or SWB)) or
		    (KEY4 and (SW0 or SW1 or SW2 or SW3 or SW5 or SW6 or SW7 or SW8 or SW9 or SWA or SWB or SWC or SWD or SWE)) or
		    (KEY3 and (SW0 or SW1 or SW2 or SW3 or SW5 or SW6 or SW8 or SW9 or SWA or SWB or SWC or SWD or SWE or SWF)) or
		    (KEY2 and (SW0 or SW1 or SW2 or SW3 or SW4 or SW5 or SW6 or SW8 or SWA or SWB or SWC or SWD or SWE)) or
		    (KEY1 and (SW2 or SWA or SWD)) ;
end log;
