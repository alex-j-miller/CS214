Script started on 2023-02-06 19:57:18-05:00 [TERM="xterm-256color" TTY="/dev/pts/6" COLUMNS="197" LINES="12"]
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ cat log_table.adb
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

]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ cat log_table.adb[4Pjava LogTablecat log_table.adb[Kgnatmake log_table.adb 
gnatmake: "log_table" up to date.
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ ./log_table 
To print a table of logarithms,
 enter the start, stop, and increment values: 1
5
1
The logarithm of  1.00000E+00 is  0.00000E+00
The logarithm of  2.00000E+00 is  3.01030E-01
The logarithm of  3.00000E+00 is  4.77121E-01
The logarithm of  4.00000E+00 is  6.02060E-01
The logarithm of  5.00000E+00 is  6.98970E-01
The logarithm of  1.00000E+00 is  0.00000E+00
The logarithm of  2.00000E+00 is  3.01030E-01
The logarithm of  3.00000E+00 is  4.77121E-01
The logarithm of  4.00000E+00 is  6.02060E-01
The logarithm of  5.00000E+00 is  6.98970E-01
The logarithm of  1.00000E+00 is  0.00000E+00
The logarithm of  2.00000E+00 is  3.01030E-01
The logarithm of  3.00000E+00 is  4.77121E-01
The logarithm of  4.00000E+00 is  6.02060E-01
The logarithm of  5.00000E+00 is  6.98970E-01
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ exit

Script done on 2023-02-06 19:57:42-05:00 [COMMAND_EXIT_CODE="0"]
