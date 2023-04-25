Script started on 2023-04-08 18:22:10-04:00 [TERM="xterm-256color" TTY="/dev/pts/70" COLUMNS="202" LINES="11"]
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Projects/11/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Projects/11/ruby[00m$ cat search.rb List.rb 
# Alex Miller
# 4/8

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list1.append(88).append(77).append(66).append(55)

list1.print 
puts
puts "list1: #{list1.search(99)}"

list2.print 
puts
puts "list2: #{list2.search(99)}"

list3.print 
puts
puts "list3: #{list3.search(99)}"

list4.print
puts "list4: #{list4.search(99)}"
puts # List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 4/8
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

  def initialize
    @first, @last = nil
    @length = 0
  end


   # create reader method for length

   # Replace this line with a statement to define a 'length' reader method


   # Am I empty?
   # Return: length == 0
  def empty?
    @length == 0
  end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
  def append(value)
    newNode = Node.new(value, nil)

    if empty?
      @first = newNode
    else
      @last.next = newNode      
    end

    @last = newNode
    @length += 1
    self
  end


  # print my items
  # Postcondition: my items have been displayed to the screen
  def print
    temp = @first
    while !temp.nil?
      printf " #{temp.value}"
      temp = temp.next
    end  
  end


  # find my maximum item
  # Return: my maximum item
  def max
    temp = @first
    maxValue = -999999
    while !temp.nil?
      if temp.value > maxValue
        maxValue = temp.value
      end
      temp = temp.next
    end
    return maxValue
  end

  def search(value)
    temp = @first
    index = 0
    
    while !temp.nil?
      if temp.value == value
        return index
      end
      temp = temp.next
      index = index + 1
    end
    return -1
  end
      

  class Node
      def initialize(item, link)
         @value = item
         @next = link
      end

      attr_reader :value
      attr_accessor :next
  end

end]0;ajm94@code-tunnel: ~/Desktop/CS 214/Projects/11/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Projects/11/ruby[00m$ ruby search.rb 
 99 88 77 66 55 88 77 66 55
list1: 0
 55 66 77 88 99
list2: 4
 55 77 99 88 66
list3: 2
list4: -1

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Projects/11/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Projects/11/ruby[00m$ exit

Script done on 2023-04-08 18:22:25-04:00 [COMMAND_EXIT_CODE="0"]
