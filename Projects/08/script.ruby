Script started on 2023-03-16 21:00:59-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="15"]
]0;ajm94@gold06: ~/Desktop/CS 214/Projects/08[01;32majm94@gold06[00m:[01;34m~/Desktop/CS 214/Projects/08[00m$ cat NameTester.rb 
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

   def setFirst(aFirst)
      @first = aFirst
   end

   def setMiddle(aMiddle)
      @middle = aMiddle
   end

   def SetLast(aLast)
      @last = aLast
   end

   def lfmi(name)
      return last + ", " + first + " " + middle[0] + "."
   end

   def read()
      first = gets.chomp
      middle = gets.chomp
      last = gets.chomp
   end

end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   name.setFirst("Billy")
   assert name.first == "Billy", "first failed"
   name.setMiddle("Bobby")
   assert name.middle == "Bobby", "middle failed"
   name.SetLast("Brown")
   assert name.last == "Brown", "last failed"
   
   print "All tests passed!\n"
end

testName

]0;ajm94@gold06: ~/Desktop/CS 214/Projects/08[01;32majm94@gold06[00m:[01;34m~/Desktop/CS 214/Projects/08[00m$ ruby NameTester.rb 
John Paul Jones
All tests passed!
]0;ajm94@gold06: ~/Desktop/CS 214/Projects/08[01;32majm94@gold06[00m:[01;34m~/Desktop/CS 214/Projects/08[00m$ exit

Script done on 2023-03-16 21:01:12-04:00 [COMMAND_EXIT_CODE="0"]
