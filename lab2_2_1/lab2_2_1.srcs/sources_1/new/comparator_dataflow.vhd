----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2020 01:45:37 AM
-- Design Name: 
-- Module Name: comparator_dataflow - Behavioral
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

entity comparator_dataflow is
    Port (v : in STD_LOGIC_VECTOR (3 downto 0);
          z : out STD_LOGIC);
end comparator_dataflow;

architecture Dataflow of comparator_dataflow is
begin
    z <= (v(3) and v(2)) or (v(3) and v(1));
end Dataflow;
