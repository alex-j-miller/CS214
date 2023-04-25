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
end