Script started on 2023-02-22 16:38:21-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ cat proj7.rb 
# Alex Miller
# 3/6

def print_array(arr)
    arr.each { |elem| puts elem }
  end
  
  def read_array(size)
    arr = []
    size.times do |i|
      print "Enter a value for element #{i}: "
      arr << gets.chomp.to_f
    end
    arr
  end
  
  print "How many values do you want in the array? "
  num_values = gets.chomp.to_i
  
  arr = read_array(num_values)
  print_array(arr)]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ ruby proj7.rb 
How many values do you want in the array? 4
Enter a value for element 0: 6
Enter a value for element 1: 2
Enter a value for element 2: 6
Enter a value for element 3: 1
6.0
2.0
6.0
1.0
]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ exit

Script done on 2023-02-22 16:38:41-05:00 [COMMAND_EXIT_CODE="0"]
