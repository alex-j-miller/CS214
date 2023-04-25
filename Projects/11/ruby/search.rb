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
puts 