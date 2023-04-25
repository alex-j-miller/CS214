-- Alex Miller
-- 4/6

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is
   function Call(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "*noise";
   end Call;
   function Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Kiwi";
   end Type_Name;


end Kiwi_Package;