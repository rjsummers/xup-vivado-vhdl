----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2020 03:49:33 PM
-- Design Name: 
-- Module Name: bcd_to_2of5 - Dataflow
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

entity bcd_to_2of5 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (4 downto 0));
end bcd_to_2of5;

architecture Dataflow of bcd_to_2of5 is
begin
    y(0) <= (not x(3) and not x(2) and not x(1)) or
            (not x(2) and x(1) and x(0)) or
            (x(2) and x(1) and not x(0));
    y(1) <= (not x(3) and not x(1) and not x(0)) or
            (x(2) and x(1) and x(0)) or
            (not x(2) and x(1) and not x(0));
    y(2) <= (x(3) and not x(1) and not x(0)) or
            (not x(3) and not x(1) and x(0)) or
            (not x(2) and x(1) and not x(0));
    y(3) <= (not x(3) and x(2) and not x(1)) or
            (x(3) and not x(1) and x(0)) or
            (not x(2) and x(1) and x(0));
    y(4) <= (x(3) and not x(1)) or (x(2) and x(1));
end Dataflow;
