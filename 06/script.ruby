Script started on 2023-02-16 20:39:32-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ ruby split.rb 
To split a string, enter the string: hello
Enter the split position: 3
The first part is: hel
and the second part is: lo
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ cat split.rb 
# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

# Replace this line with the definition of split()
def split(aString, position)
  [aString[0...position], aString[position..-1]]
end

def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/06[00m$ exit

Script done on 2023-02-16 20:39:47-05:00 [COMMAND_EXIT_CODE="0"]
