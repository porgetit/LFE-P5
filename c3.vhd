-- c3.vhd
library ieee;
use ieee.std_logic_1164.all;

entity C3 is
    port (
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        D2 : out std_logic
    );
end entity C3;

architecture behavior of C3 is
    signal D21, D22, D23, D24, D25, D26, D27, D28, D29, D210 : std_logic;
begin
    D21 <= (S1 or S2 or (not S3) or S4 or S5);
    D22 <= (S1 or S2 or (not S3) or (not S4) or S5);
    D23 <= (S1 or (not S2) or (not S3) or S4 or S5);
    D24 <= (S1 or (not S2) or (not S3) or (not S4) or S5);
    D25 <= ((not S1) or (not S2) or S3 or S4 or S5);
    D26 <= ((not S1) or (not S2) or S3 or (not S4) or S5);
    D27 <= ((not S1) or (not S2) or (not S3) or S4 or S5);
    D28 <= ((not S1) or (not S2) or (not S3) or S4 or (not S5));
    D29 <= ((not S1) or (not S2) or (not S3) or (not S4) or S5);
    D210 <= ((not S1) or (not S2) or (not S3) or (not S4) or (not S5));
    D2 <= D21 and D22 and D23 and D24 and D25 and D26 and D27 and D28 and D29 and D210;
end behavior;
