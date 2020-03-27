----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2020 12:06:07 AM
-- Design Name: 
-- Module Name: lab1_2_2 - Behavioral
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

entity lab1_2_2 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0));
end lab1_2_2;

architecture Dataflow of lab1_2_2 is

begin

m(0) <= (x(0) and (not s)) or (y(0) and s);
m(1) <= (x(1) and (not s)) or (y(1) and s);

end Dataflow;
