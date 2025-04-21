-- c1_sop.vhd
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
    signal D011, D012, D013, D014, D015, D016, D017, D018, D019, D020 : std_logic;
    signal D021, D022 : std_logic;
begin
    D01 <= ((not S1) and (not S2) and (not S3) and (not S4) and (not S5));
    D02 <= ((not S1) and (not S2) and (not S3) and (not S4) and S5);
    D03 <= ((not S1) and (not S2) and (not S3) and S4 and (not S5));
    D04 <= ((not S1) and (not S2) and (not S3) and S4 and S5);
    D05 <= ((not S1) and (not S2) and S3 and (not S4) and (not S5));
    D06 <= ((not S1) and (not S2) and S3 and (not S4) and S5);
    D07 <= ((not S1) and S2 and (not S3) and (not S4) and (not S5));
    D08 <= ((not S1) and S2 and (not S3) and (not S4) and S5);
    D09 <= ((not S1) and S2 and (not S3) and S4 and (not S5));
    D010 <= ((not S1) and S2 and (not S3) and S4 and S5);
    D011 <= (S1 and (not S2) and (not S3) and (not S4) and (not S5));
    D012 <= (S1 and (not S2) and (not S3) and (not S4) and S5);
    D013 <= (S1 and (not S2) and (not S3) and S4 and (not S5));
    D014 <= (S1 and (not S2) and (not S3) and S4 and S5);
    D015 <= (S1 and (not S2) and S3 and (not S4) and (not S5));
    D016 <= (S1 and (not S2) and S3 and (not S4) and S5);
    D017 <= (S1 and (not S2) and S3 and S4 and (not S5));
    D018 <= (S1 and (not S2) and S3 and S4 and S5);
    D019 <= (S1 and S2 and (not S3) and (not S4) and (not S5));
    D020 <= (S1 and S2 and (not S3) and S4 and S5);
    D021 <= (S1 and S2 and S3 and (not S4) and (not S5));
    D022 <= (S1 and S2 and S3 and (not S4) and S5);
    D0 <= D01 or D02 or D03 or D04 or D05 or D06 or D07 or D08 or D09 or D010 or D011 or D012 or D013 or D014 or D015 or D016 or D017 or D018 or D019 or D020 D021 or D022;
end behavior;
