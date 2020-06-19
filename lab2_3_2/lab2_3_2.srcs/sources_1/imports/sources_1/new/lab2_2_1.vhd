----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2020 02:00:15 PM
-- Design Name: 
-- Module Name: lab2_2_1 - Behavioral
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

entity lab2_2_1 is
    Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           ca : out STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC);
end lab2_2_1;

architecture Structural of lab2_2_1 is
    component lab2_2_1_partA
        Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
               z : out STD_LOGIC;
               m : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component bcd_to_7seg
        Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
               ca : out STD_LOGIC_VECTOR (3 downto 0);
               seg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal m : STD_LOGIC_VECTOR (3 downto 0);
begin

pa1 : lab2_2_1_partA
port map (v => v,
          m => m,
          z => z);

dc1 : bcd_to_7seg
port map (x => m,
          ca => ca,
          seg => seg);

end Structural;
