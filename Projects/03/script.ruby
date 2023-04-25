Script started on 2023-01-26 21:00:46-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="11"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switchr[KRuby.rb 
def letterGrade (g)
    case g
    when 9..10
        return 'A'
    when 8..9
        return 'B'
    when 7..8
        return 'C'
    when 6..7
        return 'D'
    else
        return 'F'
    end
end

if __FILE__ == $0
    puts "Num: "
    grade = gets.chomp.to_f
    puts letterGrade(grade)
end]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switchRuby.rb [6P./switchAda[C[11@gnatmake switchAda.adb[C[11P./switchAda[C[6@cat switchRuby.rb[C[Kruby switchRuby.rb 
Num: 
10
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ ruby switchRuby.rb 
Num: 
9
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ ruby switchRuby.rb 
Num: 
1
F
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ exit

Script done on 2023-01-26 21:01:07-05:00 [COMMAND_EXIT_CODE="0"]
