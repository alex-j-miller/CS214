-- Alex Miller
-- 4/6

with Bird_Package; use Bird_Package;

package Flying_Package is
   
   type Flying_Type is new Bird_Type with private;

   function Movement(A_Duck : in Flying_Type) return String;

   function Type_Name(A_Duck : in Flying_Type) return String;

private
   type Flying_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Flying_Package;