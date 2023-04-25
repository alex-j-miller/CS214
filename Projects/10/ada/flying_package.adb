-- Alex Miller
-- 4/6

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Flying_Type) return String is
   begin
      return "flew";
   end Movement;
   
   
   function Type_Name(A_Duck : in Flying_Type) return String is
   begin
      return "Flying";
   end Type_Name;


end Flying_Package;