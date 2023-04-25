Script started on 2023-02-16 20:30:53-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ cat split[Kt.adb 
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by:
-- Date:
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   The_String, Astring, Part1, Part2 : String := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   -- Replace this line with definition of split()

procedure split (The_String: in String; Pos: in Natural; Part1, Part2: out String) is
begin

   Part1 := The_String(1 .. (Pos - 1));
   Part2 := The_String(Pos .. The_String'Last);

end split;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ gnatmake split.adb 
gnatmake: "split" up to date.
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ ./split 
To split a string, enter the string: hello
Enter the split position: 3
The first part is hel
and the second part is lo

]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ exit

Script done on 2023-02-16 20:31:25-05:00 [COMMAND_EXIT_CODE="1"]
