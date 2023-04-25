Script started on 2023-02-22 16:23:13-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold33: ~/Desktop/CS 214/Labs/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Labs/07[00m$ cat average.rb 
# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller 
# Date:   
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

# Define sum() method here
def sum(arr)
   sum = 0
   for i in 0...arr.size
      sum += arr[i]
   end
   return sum
end

# Document and define average() method here
def average(arr)
   if arr.size == 0
      return 0
   else
      return sum(arr) / arr.size.to_f
   end
end


def main
   # Define array0 as an Array containing no values
   array0 = []
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = [9.0, 8.0, 7.0, 6.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main

]0;ajm94@gold33: ~/Desktop/CS 214/Labs/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Labs/07[00m$ ruby average.rb 
sum 0 is: 0
sum 1 is: 30.0
average 0 is: 0
average 1 is: 7.5
]0;ajm94@gold33: ~/Desktop/CS 214/Labs/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Labs/07[00m$ exit

Script done on 2023-02-22 16:23:24-05:00 [COMMAND_EXIT_CODE="0"]
