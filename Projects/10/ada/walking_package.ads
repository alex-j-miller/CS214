-- Alex Miller
-- 4/6

with Bird_Package; use Bird_Package;

package Walking_Package is
   
   type Walking_Type is new Bird_Type with private;
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String;

private
   type Walking_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Walking_Package;