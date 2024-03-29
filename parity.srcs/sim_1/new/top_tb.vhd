----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.03.2024 08:35:27
-- Design Name: 
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    component top
        Port ( sw_i : in STD_LOGIC_VECTOR (7 downto 0);
        led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
        led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal  sw_i: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal led7_an_o: STD_LOGIC_VECTOR (3 downto 0);
    signal led7_seg_o: STD_LOGIC_VECTOR (7 downto 0); 
begin

    -- Unit Under Test
    uut: top port map (
        sw_i => sw_i,
        led7_an_o => led7_an_o,
        led7_seg_o => led7_seg_o
    );

   stim_proc: process
   begin		
      	sw_i <= "11111111";
      	for i in 0 to 7 loop
      		wait for 100ns;
      	    sw_i(i) <= '0';
      	end loop;
		wait;
   end process;

end Behavioral;
