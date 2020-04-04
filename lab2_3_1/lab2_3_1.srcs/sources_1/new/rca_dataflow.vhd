----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2020 01:46:58 PM
-- Design Name: 
-- Module Name: rca_dataflow - Dataflow
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

entity rca_dataflow is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end rca_dataflow;

architecture Dataflow of rca_dataflow is
    component fulladder_dataflow
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               s : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;
    
    signal ci1, ci2, ci3 : STD_LOGIC;
begin

fa0 : fulladder_dataflow
port map (a => a(0),
          b => b(0),
          cin => cin,
          s => s(0),
          cout => ci1);

fa1 : fulladder_dataflow
port map (a => a(1),
          b => b(1),
          cin => ci1,
          s => s(1),
          cout => ci2);

fa2 : fulladder_dataflow
port map (a => a(2),
          b => b(2),
          cin => ci2,
          s => s(2),
          cout => ci3);

fa3 : fulladder_dataflow
port map (a => a(3),
          b => b(3),
          cin => ci3,
          s => s(3),
          cout => cout);

end Dataflow;
