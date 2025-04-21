-- c4.vhd
library ieee;
use ieee.std_logic_1164.all;

entity C4 is
    port (
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        D0 : out std_logic;
        D1 : out std_logic;
        D2 : out std_logic;
        D3 : out std_logic
    );
end entity C4;
