----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2025 19:42:42
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    port (
        clk : in std_logic;
        io_btn0 : in std_logic;
        led0 : out std_logic
    );
end top;

architecture Behavioral of top is

signal r_led0 : std_logic := '0';
signal r_btn0 : std_logic := '0';

begin
    
    process (clk) is 
    begin
        if rising_edge (clk) then
            r_btn0 <= io_btn0;
            if io_btn0 = '0' and r_btn0 = '1' then
                r_led0 <= not r_led0;
            end if;
        end if;
    end process;
    
    led0 <= r_led0;
    
end Behavioral;
