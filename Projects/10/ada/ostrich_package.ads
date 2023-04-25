-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Ostrich_Package is
   
   type Ostrich_Type is new Walking_Type with private;

   function Call(A_Ostrich : in Ostrich_Type) return String;
   function Type_Name(A_Ostrich : in Ostrich_Type) return String;
   private
    type Ostrich_Type is new Walking_Type with
        record
            null;
        end record;
end Ostrich_Package;