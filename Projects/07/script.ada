Script started on 2023-03-09 20:00:58-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="172" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/07[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ gnatmake proj7.adb 
x86_64-linux-gnu-gcc-7 -c proj7.adb
x86_64-linux-gnu-gnatbind-7 -x proj7.ali
x86_64-linux-gnu-gnatlink-7 proj7.ali
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/07[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ ./proj7 
10
9
8
7
6
5
4
3
2
1
 1.00000E+01
 9.00000E+00
 8.00000E+00
 7.00000E+00
 6.00000E+00
 5.00000E+00
 4.00000E+00
 3.00000E+00
 2.00000E+00
 1.00000E+00
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/07[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ cat proj7.adb
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

end proj7;]0;ajm94@gold17: ~/Desktop/CS 214/Projects/07[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ exit

Script done on 2023-03-09 20:01:37-05:00 [COMMAND_EXIT_CODE="0"]
