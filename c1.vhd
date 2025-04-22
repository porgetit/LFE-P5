-- c1.vhd
library ieee;
use ieee.std_logic_1164.all;

entity C1 is
    port (
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        D0 : out std_logic
    );
end entity C1;

architecture behavior of C1 is
    signal D01, D02, D03, D04, D05, D06, D07, D08, D09, D010 : std_logic;
begin
    D01 <= (S1 or S2 or (not S3) or (not S4) or S5);
    D02 <= (S1 or S2 or (not S3) or (not S4) or (not S5));
    D03 <= (S1 or (not S2) or (not S3) or S4 or S5);
    D04 <= (S1 or (not S2) or (not S3) or S4 or (not S5));
    D05 <= (S1 or (not S2) or (not S3) or (not S4) or S5);
    D06 <= (S1 or (not S2) or (not S3) or (not S4) or (not S5));
    D07 <= ((not S1) or (not S2) or S3 or (not S4) or S5);
    D08 <= ((not S1) or (not S2) or S3 or (not S4) or (not S5));
    D09 <= ((not S1) or (not S2) or (not S3) or (not S4) or S5);
    D010 <= ((not S1) or (not S2) or (not S3) or (not S4) or (not S5));
    D0 <= D01 and D02 and D03 and D04 and D05 and D06 and D07 and D08 and D09 and D010;
end behavior;
