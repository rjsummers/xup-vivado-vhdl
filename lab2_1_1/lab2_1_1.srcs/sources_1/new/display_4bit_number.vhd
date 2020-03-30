----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2020 11:46:36 PM
-- Design Name: 
-- Module Name: display_4bit_number - Structural
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

entity display_4bit_number is
    Port (ca : out STD_LOGIC_VECTOR (3 downto 0);
          seg : out STD_LOGIC_VECTOR (6 downto 0));
end display_4bit_number;

architecture Structural of display_4bit_number is

    -- BCD to 7-segment decoder
    component bcd_to_7seg
        Port (x : in STD_LOGIC_VECTOR (3 downto 0);
              ca : out STD_LOGIC_VECTOR (3 downto 0);
              seg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
begin
    
    disp1 : bcd_to_7seg
    port map(x => "0110",
             ca => ca,
             seg => seg);

end Structural;
