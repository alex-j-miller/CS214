-- Alex Miller
-- 4/6

with Ada.Text_IO; use Ada.Text_IO;

package body Penguin_Package is
    function Call(A_Penguin : in Penguin_Type) return String is
    begin
        return "Huhhuh";
    end Call;
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;
end Penguin_Package;