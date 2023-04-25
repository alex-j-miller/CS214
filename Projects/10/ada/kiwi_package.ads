-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Kiwi_Package is
   
   type Kiwi_Type is new Walking_Type with private;

   function Call(A_Kiwi : in Kiwi_Type) return String;

   function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
   type Kiwi_Type is new Walking_Type with
      record
	 null;
      end record;
   

end Kiwi_Package;