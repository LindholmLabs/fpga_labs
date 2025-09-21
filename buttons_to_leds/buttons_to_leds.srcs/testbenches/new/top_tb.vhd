----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2025 21:26:10
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
end top_tb;

architecture Behavioral of top_tb is
signal s_led0, s_led1, s_led2, s_led3, s_led4, s_led5, s_led6, s_led7 : std_logic;
signal s_io_btn0, s_io_btn1, s_io_btn2, s_io_btn3, s_io_btn4 : std_logic;
begin
    
    UUT : entity work.top
    port map (
        led0 => s_led0,
        led1 => s_led1,
        led2 => s_led2,
        led3 => s_led3,
        led4 => s_led4,
        led5 => s_led5,
        led6 => s_led6,
        led7 => s_led7,
        io_btn0 => s_io_btn0,
        io_btn1 => s_io_btn1,
        io_btn2 => s_io_btn2,
        io_btn3 => s_io_btn3,
        io_btn4 => s_io_btn4
    );
    
    process is
    begin
        -- initialize default button signals
        s_io_btn0 <= '0';
        s_io_btn1 <= '0';
        s_io_btn2 <= '0';
        s_io_btn3 <= '0';
        s_io_btn4 <= '0';
        wait for 10 ns;
        
        -- Test default state of LEDs
        assert s_led0 = '0' report "Default state of led0 not off" severity error;
        assert s_led1 = '0' report "Default state of led1 not off" severity error;
        assert s_led2 = '0' report "Default state of led2 not off" severity error;
        assert s_led3 = '0' report "Default state of led3 not off" severity error;
        assert s_led4 = '0' report "Default state of led4 not off" severity error;
        assert s_led5 = '0' report "Default state of led5 not off" severity error;
        assert s_led6 = '0' report "Default state of led6 not off" severity error;
        assert s_led7 = '1' report "Default state of led7 not on" severity error;
        
        -- Test behaviour of LED0
        s_io_btn0 <= '1';
        wait for 10 ns;
        assert s_led0 = '1' report "led0 did not turn on when pressing io_btn0" severity error;
        assert s_led6 = '1' report "led6 did not turn on when pressing io_btn0" severity error;
        
        wait; -- keep simulation running
    end process;
    -- assert led0 on when io_btn0 is pressed
    
end Behavioral;
