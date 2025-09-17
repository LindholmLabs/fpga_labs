----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2025 00:21:41
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

entity top is
    Port (
        led0 : out std_logic  -- output port for LED0
    );
end top;

architecture Behavioral of top is
begin
    -- Drive led0 constantly high (turn LED on)
    led0 <= '1';
end Behavioral;