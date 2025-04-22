-- c4_sop.vhd
library ieee;
use ieee.std_logic_1164.all;

entity C4 is
    port (
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        D3 : out std_logic
    );
end entity C4;

architecture behavior of C4 is
    signal D31, D32, D33, D34, D35, D36, D37, D38, D39, D310 : std_logic;
begin
    D31 <= (S1 or S2 or (not S3) or S4 or (not S5));
    D32 <= (S1 or S2 or (not S3) or (not S4) or (not S5);
    D33 <= (S1 or (not S2) or (not S3) or S4 or (not S5));
    D34 <= (S1 or (not S2) or (not S3) or (not S4) or (not S5));
    D35 <= ((not S1) or (not S2) or S3 or S4 or (not S5));
    D36 <= ((not S1) or (not S2) or S3 or (not S4) or (not S5));
    D37 <= ((not S1) or (not S2) or (not S3) or S4 or S5);
    D38 <= ((not S1) or (not S2) or (not S3) or S4 or (not S5));
    D39 <= ((not S1) or (not S2) or (not S3) or (not S4) or S5);
    D310 <= ((not S1) or (not S2) or (not S3) or (not S4) or (not S5));
    D3 <= D31 and D32 and D33 and D34 and D35 and D36 and D37 and D38 and D39 and D310;
end behavior;
