----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2020 01:45:37 AM
-- Design Name: 
-- Module Name: lab2_2_1_partA - Behavioral
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

entity lab2_2_1_partA is
    Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC;
           m : out STD_LOGIC_VECTOR (3 downto 0));
end lab2_2_1_partA;

architecture Structural of lab2_2_1_partA is
    component comparator_dataflow
        Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
               z : out STD_LOGIC);
    end component;
    
    component mux_2to1_1bit
        Port ( x : in STD_LOGIC;
               y : in STD_LOGIC;
               s : in STD_LOGIC;
               m : out STD_LOGIC);
    end component;
    
    component lab2_2_1_circuitA_dataflow
        Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
               v_int : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal gt_nine : STD_LOGIC;
    signal v_int : STD_LOGIC_VECTOR (3 downto 0);
begin
    
    cmp1 : comparator_dataflow
    port map (v => v,
              z => gt_nine);
    
    ca1 : lab2_2_1_circuitA_dataflow
    port map (v => v,
              v_int => v_int);
    
    mx1 : mux_2to1_1bit
    port map (x => v(0),
              y => v_int(0),
              s => gt_nine,
              m => m(0));
    
    mx2 : mux_2to1_1bit
    port map (x => v(1),
              y => v_int(1),
              s => gt_nine,
              m => m(1));
    
    mx3 : mux_2to1_1bit
    port map (x => v(2),
              y => v_int(2),
              s => gt_nine,
              m => m(2));
    
    mx4 : mux_2to1_1bit
    port map (x => v(3),
              y => v_int(3),
              s => gt_nine,
              m => m(3));
    
    z <= gt_nine;
end Structural;
