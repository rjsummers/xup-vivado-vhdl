----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2020 04:23:29 PM
-- Design Name: 
-- Module Name: mux_3_to_1 - Structural
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

entity mux_3_to_1 is
    port ( u : in STD_LOGIC_VECTOR (1 downto 0);
           v : in STD_LOGIC_VECTOR (1 downto 0);
           w : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC_VECTOR (1 downto 0);
           m : out STD_LOGIC_VECTOR (1 downto 0));
end mux_3_to_1;

architecture Structural of mux_3_to_1 is

    -- 2-bit 2-to-1 mux
    component mux_2_to_1
        port ( x : in STD_LOGIC_VECTOR (1 downto 0);
               y : in STD_LOGIC_VECTOR (1 downto 0);
               s : in STD_LOGIC;
               m : out STD_LOGIC_VECTOR (1 downto 0));
    end component;
    
    signal m1_out : STD_LOGIC_VECTOR (1 downto 0);
begin

    m1 : mux_2_to_1
    port map (x => u,
              y => v,
              s => s(0),
              m => m1_out);
    
    m2 : mux_2_to_1
    port map (x => m1_out,
              y => w,
              s => s(1),
              m => m);

end Structural;
