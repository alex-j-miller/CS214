-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Penguin_Package is
   
   type Penguin_Type is new Walking_Type with private;

   function Call(A_Penguin : in Penguin_Type) return String;
   function Type_Name(A_Penguin : in Penguin_Type) return String;
   private
    type Penguin_Type is new Walking_Type with
        record
            null;
        end record;
end Penguin_Package;