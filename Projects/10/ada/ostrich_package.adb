-- Alex Miller
-- 4/6

with Ada.Text_IO; use Ada.Text_IO;

package body Ostrich_Package is
    function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork";
    end Call;
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;
end Ostrich_Package;