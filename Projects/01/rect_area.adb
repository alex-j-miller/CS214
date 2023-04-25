with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rect_area is

   height, length, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function rectArea(height: in float; length: in float) return float is 
   begin
      return height * length;
   end rectArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a rect,");
   Put("enter its height: ");
   Get(height);
   Put("enter its length: ");
   Get(length);

   area := rectArea(height, length);

   New_Line;
   Put("The rect's area is ");
   Put(area);
   New_Line; New_Line; 

   Put("The rect's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end rect_area;