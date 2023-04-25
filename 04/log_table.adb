-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by:
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment, Count, I, X: Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);
   

   -- Replace this line with a loop to generate the table of logs.
   Count := Start;
   loop
      Put("The logarithm of ");
      Put(Count);
      Put(" is ");
      Put( log( Count, 10.0 ) );
      New_Line;
      Count := Count + Increment;
      exit when (Count > Stop);
   end loop;

   for I in 0 .. Integer((Stop - Start) / Increment) loop
      X := Start + Float(I) * Increment;
      Put("The logarithm of ");
      Put(X);
      Put(" is ");
      Put(log(X, 10.0));
      New_Line;
   end loop;

   Count := Start;
   while Count <= Stop loop 
      Put("The logarithm of ");
      Put(Count);
      Put(" is ");
      Put(log(Count, 10.0));
      New_Line;
      Count := Count + Increment;
   end loop;

end log_table;

