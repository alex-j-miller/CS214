Script started on 2023-01-12 20:50:15-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="197" LINES="13"]
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ cat rect_area.rb
#! /usr/bin/ruby
# rect_area.rb computes the area of a rect given its length and width
# 
# Input: the length and width of a rect
# Precondition: the length and width is not negative
# Output: the area of the rect.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
###############################################################

# function rectArea returns a rect's area, given its length and width
# Parameters: length and width, a number
# Precondition: length and width > 0.
# Returns: the area of a rect whose length and width is length and width.
def rectArea(length, width)
    length * width 
end

if __FILE__ == $0
   puts "To compute the area of a rect,"
   print " enter its length: "
   length = gets.chomp.to_f
   print " enter its height: "
   height = gets.chomp.to_f
   print "The rect's area is: "
   puts rectArea(length, height)
end]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ ruby rect_area.rb
To compute the area of a rect,
 enter its length: 1
 enter its height: 1
The rect's area is: 1.0
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ ruby rect_area.rb
To compute the area of a rect,
 enter its length: 2
 enter its height: 2
The rect's area is: 4.0
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ ruby rect_area.rb
To compute the area of a rect,
 enter its length: 2.5
 enter its height: 2.5
The rect's area is: 6.25
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ ruby rect_area.rb
To compute the area of a rect,
 enter its length: 4.99999
 enter its height: 4.99999
The rect's area is: 24.999900000100002
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ exit

Script done on 2023-01-12 20:50:50-05:00 [COMMAND_EXIT_CODE="0"]
