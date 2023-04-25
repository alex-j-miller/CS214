Script started on 2023-02-06 20:36:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/6" COLUMNS="197" LINES="12"]
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ cat logTable.rb 
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
#### ADD CODE HERE TO GET THESE VALUES AS NUMBERS
   start = gets.to_f
   print "Enter the stop value: "
####
   stop = gets.to_f
   print "Enter the increment value: "
####   
   step = gets.to_f   

#  Replace this line with a loop to display the log table 
   while start <= stop do
      puts "The log of " << start.to_s << " is "  << Math.log10(start).to_s
      start += step
   end
end

]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ cat logTable.rb [KRUBY [K[K[K[K[Kruby logTable.R[Krb 
Enter the start value: 1
Enter the stop value: 5
Enter the increment value: 1
The log of 1.0 is 0.0
The log of 2.0 is 0.3010299956639812
The log of 3.0 is 0.47712125471966244
The log of 4.0 is 0.6020599913279624
The log of 5.0 is 0.6989700043360189
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ exit

Script done on 2023-02-06 20:36:46-05:00 [COMMAND_EXIT_CODE="0"]
