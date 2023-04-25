Script started on 2023-02-09 19:36:06-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="12"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ cat forLoop.adb 
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure forLoop is

    Num, answer, i, n : Float;

begin
    Put("Num: ");
    Get(num);
    num := Float(num);
    answer := 1.0;


    for i in 2 .. Integer(num) loop
        answer := answer * Float(i);
    end loop;

    New_Line;
    Put(answer);

end forLoop;]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ cat forLoop.adb [4Pjava forLoopcat forLoop.adb [Kgnatmake forLoop.adb 
gnatmake: "forLoop" up to date.
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ for[K[K[K./forLoop 
Num: 5

 1.20000E+02
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ ./forLoop 
Num: 1

 1.00000E+00
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ exit

Script done on 2023-02-09 19:37:13-05:00 [COMMAND_EXIT_CODE="0"]
