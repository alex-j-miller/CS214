Script started on 2023-03-30 19:48:22-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="9"]
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/09/ruby[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/09/ruby[00m$ cat nameTester.rb 
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/30
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

load 'Name.rb'

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;ajm94@gold18: ~/Desktop/CS 214/Labs/09/ruby[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/09/ruby[00m$ cat Name.rb 
# Alex Miller
# 3/30
####################

class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end
  
    attr_reader :first, :middle, :last
  
    def fullName
      @first + " " + @middle + " " + @last
    end
  
    def print
      puts fullName
      fullName
    end
end
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/09/ruby[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/09/ruby[00m$ ruby nameTester.rb 
John Paul Jones
All tests passed!
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/09/ruby[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/09/ruby[00m$ exit

Script done on 2023-03-30 19:48:46-04:00 [COMMAND_EXIT_CODE="0"]
