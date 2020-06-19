----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 12:48:43 PM
-- Design Name: 
-- Module Name: lab2_3_2 - Dataflow
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

entity lab2_3_2 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           ca : out STD_LOGIC_VECTOR (3 downto 0);
           sum_msb : out STD_LOGIC;
           cout : out STD_LOGIC);
end lab2_3_2;

architecture Dataflow of lab2_3_2 is
    component rca_dataflow
        Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
               b : in STD_LOGIC_VECTOR (3 downto 0);
               cin : in STD_LOGIC;
               s : out STD_LOGIC_VECTOR (3 downto 0);
               cout : out STD_LOGIC);
    end component;
    
    component four_bit_display
        Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
               seg : out STD_LOGIC_VECTOR (6 downto 0);
               ca : out STD_LOGIC_VECTOR (3 downto 0);
               z : out STD_LOGIC);
    end component;
    
    signal sum : STD_LOGIC_VECTOR(3 downto 0);
begin

rca1 : rca_dataflow
port map (a => a,
          b => b,
          cin => cin,
          s => sum,
          cout => cout);
          
disp1 : four_bit_display
port map (v => sum,
          seg => seg,
          ca => ca,
          z => sum_msb);

end Dataflow;
