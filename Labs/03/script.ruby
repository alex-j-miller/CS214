Script started on 2023-01-23 20:47:51-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="182" LINES="12"]
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ cat year_codes.rb 
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
   if year =~ /freshman/
      1
   elsif year =~ /sophomore/
      2
   elsif year =~ /junior/
      3
   elsif year =~ /senior/
      4
   else
      0
   end
end 


if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ ruby year_codes.rb 
Enter the year: junior
Numeric code is: 3
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ ruby year_codes.rb 
Enter the year: freh shman
Numeric code is: 1
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ ruby year_codes.rb 
Enter the year: supersenior
Numeric code is: 4
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ 1
1: command not found
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ 1ruby year_codes.rb 
Enter the year: 1
Numeric code is: 0
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ exit

Script done on 2023-01-23 20:48:38-05:00 [COMMAND_EXIT_CODE="0"]
