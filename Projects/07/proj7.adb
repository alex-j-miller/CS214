-- Alex Miller
-- 3/6

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure proj7 is
 type FArray is array (Positive range <>) of Float;
   My_Array : FArray(1..10);
procedure printArray(arr: in FArray) is
begin

   for I in My_Array'Range loop

      Put( arr(I) );
      New_Line;

   end loop;
   return;

end printArray;

procedure readArray is
begin

   for I in My_Array'Range loop

      Get(My_Array(I));

   end loop;
   return;

end readArray;

begin

   readArray;
   printArray(My_Array);

end proj7;