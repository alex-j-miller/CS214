Script started on 2023-03-13 20:30:23-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="182" LINES="10"]
ca]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ cat NameTester.rb 
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/13
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name
   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
   end
   attr_reader :first, :middle, :last

   def fullName()
      return @first + " " + @middle + " " + @last
   end

   def print()
      puts fullName()
      return fullName()
   end

end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ ruby NameTester.rb 
John Paul Jones
All tests passed!
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ exit

Script done on 2023-03-13 20:30:35-04:00 [COMMAND_EXIT_CODE="0"]
