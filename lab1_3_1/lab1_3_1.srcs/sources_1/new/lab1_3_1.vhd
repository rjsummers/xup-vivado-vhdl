----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2020 11:53:06 PM
-- Design Name: 
-- Module Name: lab1_3_1 - Behavioral
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

entity lab1_3_1 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0));
end lab1_3_1;

architecture Structural of lab1_3_1 is
    component and2 is
        Port (i0, i1 : in STD_LOGIC;
              o : out STD_LOGIC);
    end component;

    component or2 is
        Port (i0, i1 : in STD_LOGIC;
              o : out STD_LOGIC);
    end component;

    component inv is
        Port (i : in STD_LOGIC;
              o : out STD_LOGIC);
    end component;
    
    signal s_not : STD_LOGIC;
    signal x_int, y_int : STD_LOGIC_VECTOR (1 downto 0);
begin
    
    n1 : inv port map (i => s,
                       o => s_not);
    
    a1 : and2 port map (i0 => x(0),
                        i1 => s_not,
                        o => x_int(0));
    
    a2 : and2 port map (i0 => y(0),
                        i1 => s,
                        o => y_int(0));
    
    o1 : or2 port map (i0 => x_int(0),
                       i1 => y_int(0),
                       o => m(0));
    
    a3 : and2 port map (i0 => x(1),
                        i1 => s_not,
                        o => x_int(1));
    
    a4 : and2 port map (i0 => y(1),
                        i1 => s,
                        o => y_int(1));
    
    o2 : or2 port map (i0 => x_int(1),
                       i1 => y_int(1),
                       o => m(1));
end Structural;
