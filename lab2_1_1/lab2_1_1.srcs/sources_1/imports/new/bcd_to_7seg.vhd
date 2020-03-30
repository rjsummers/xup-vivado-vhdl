----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2020 10:33:28 PM
-- Design Name: 
-- Module Name: bcd_to_7seg - Dataflow
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

entity bcd_to_7seg is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           ca : out STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end bcd_to_7seg;

architecture Dataflow of bcd_to_7seg is
begin
    seg(0) <= x(3) or x(1) or (x(2) and x(0)) or (not x(2) and not x(0));
    seg(1) <= x(3) or (not x(3) and not x(2)) or (x(1) and x(0)) or (not x(1) and not x(0));
    seg(2) <= x(3) or x(2) or (not x(1)) or x(0);
    seg(3) <= x(3) or (not x(2) and not x(1) and not x(0))
                   or (x(2) and not x(1) and x(0)) or (not x(2) and x(1) and x(0))
                   or (x(1) and not x(0));
    seg(4) <= (not x(2) and not x(1) and not x(0))
              or (not x(3) and not x(2) and not x(0))
              or (x(1) and not x(0));
    seg(5) <= (not x(1) and not x(0)) or (x(2) and not x(1))
              or x(3) or (x(2) and x(1) and not x(0));
    seg(6) <= x(3) or (x(2) and not x(1)) or (not x(2) and x(1)) or (x(1) and not x(0));
    
    ca <= "0001";
end Dataflow;
