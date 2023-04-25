Script started on 2023-02-09 20:14:12-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="12"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ cat forLoop.rb
def fact(n)
    answer =1.0

    for i in 2..n
        answer *= i
    end

    return answer
end

if __FILE__ == $0
    puts "Num: "
    n = gets.to_f

    puts "#{fact(n)}"
end]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ ruby forLoop.rb
Num: 
5
120.0
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ exit

Script done on 2023-02-09 20:14:24-05:00 [COMMAND_EXIT_CODE="0"]
