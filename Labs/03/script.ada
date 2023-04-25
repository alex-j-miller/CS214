Script started on 2023-01-23 20:15:58-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="182" LINES="12"]
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ cat year_codes.adb
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

]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ cat year_codes.adb[4Pjava YearCodescat year_codes.adb[Kgnat [Kmake year_codes.adb 
gnatmake: "year_codes" up to date.
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ ./year_codes 
Enter your academic year: 1
          0
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ ./year_codes 
Enter your academic year: freshman
          1
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ exit

Script done on 2023-01-23 20:16:45-05:00 [COMMAND_EXIT_CODE="0"]
