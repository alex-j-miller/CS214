Script started on 2023-01-26 20:25:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="11"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switcha[KAda.adb
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure switchAda is

    grade : Integer;
    c : Character;

    function letterGrade(a: in Integer) return Character is
    begin
        case a is
            when 10 => return'A';
            when 9 => return 'A';
            when 8 => return 'B';
            when 7 => return 'C';
            when 6 => return 'D';
            when others => return 'F';
        end case;
    end letterGrade;

begin
    Put("enter num: ");
    grade := Integer'Value(Get_Line);
    Put(letterGrade(grade));
end switchAda;]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switchAda.adb[1Pjava switchJava1[K1cat switchAda.adb[Kgnatmake switchAda.adb 
gnatmake: "switchAda" up to date.
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ gnatmake switchAda.adb [K./switchAda 
enter num: 10
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ ./switchAda 
enter num: 9
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ ./switchAda 
enter num: 1
F
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ exit

Script done on 2023-01-26 20:25:58-05:00 [COMMAND_EXIT_CODE="0"]
