-- c3_sop.vhd
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
    signal D211, D212, D213, D214, D215, D216, D217, D218, D219, D220 : std_logic;
    signal D221, D222 : std_logic;
begin
    D21 <= ((not S1) and (not S2) and (not S3) and (not S4) and (not S5));
    D22 <= ((not S1) and (not S2) and (not S3) and (not S4) and S5);
    D23 <= ((not S1) and (not S2) and (not S3) and S4 and (not S5));
    D24 <= ((not S1) and (not S2) and (not S3) and S4 and S5);
    D25 <= ((not S1) and (not S2) and S3 and (not S4) and S5);
    D26 <= ((not S1) and (not S2) and S3 and S4 and S5);
    D27 <= ((not S1) and S2 and (not S3) and (not S4) and (not S5));
    D28 <= ((not S1) and S2 and (not S3) and (not S4) and S5);
    D29 <= ((not S1) and S2 and (not S3) and S4 and (not S5));
    D210 <= ((not S1) and S2 and (not S3) and S4 and S5);
    D211 <= ((not S1) and S2 and S3 and (not S4) and S5);
    D212 <= ((not S1) and S2 and S3 and S4 and S5);
    D213 <= (S1 and (not S2) and (not S3) and (not S4) and (not S5));
    D214 <= (S1 and (not S2) and (not S3) and (not S4) and S5);
    D215 <= (S1 and (not S2) and (not S3) and S4 and (not S5));
    D216 <= (S1 and (not S2) and (not S3) and S4 and S5);
    D217 <= (S1 and (not S2) and S3 and (not S4) and (not S5));
    D218 <= (S1 and (not S2) and S3 and (not S4) and S5);
    D219 <= (S1 and (not S2) and S3 and S4 and (not S5));
    D220 <= (S1 and (not S2) and S3 and S4 and S5);
    D221 <= (S1 and S2 and (not S3) and (not S4) and S5);
    D222 <= (S1 and S2 and (not S3) and S4 and S5);
    D2 <= D21 or D22 or D23 or D24 or D25 or D26 or D27 or D28 or D29 or D210 or D211 or D212 or D213 or D214 or D215 or D216 or D217 or D218 or D219 or D220 or D221 or D222;
end behavior;
