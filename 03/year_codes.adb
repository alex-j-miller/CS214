-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

       function YearCodes(str: in String) return Integer is
    begin
        
        if str = "freshman " then
            return 1;
        elsif str = "sophomore" then
            return 2;
        elsif str = "junior   " then
            return 3;
        elsif str = "senior   " then
            return 4;
        else
            return 0;
        end if;
    end YearCodes;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( YearCodes(year) );                       -- Convert and output
   New_Line;
end year_codes;

