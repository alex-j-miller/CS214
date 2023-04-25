Script started on 2023-04-08 22:52:38-04:00 [TERM="xterm-256color" TTY="/dev/pts/70" COLUMNS="208" LINES="12"]
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ cat array_sum.rb 
# array_sum.rb sums the values in an array
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 4/8
#
# Usage: ruby array_sum.rb <inFileName>
######################################################

# make certain the input file was specified on the command-line
def checkCommandLine
   if ARGV.length != 2
      puts "\nUsage: sum <inFileName> <numThreads>\n\n"
      exit(1)
   end
end


# return: an array containing the values from the file
#  whose name was specified on the command-line
def readFile
   strArray = IO.readlines( ARGV[0] )
   intArray = Array.new( Integer(strArray[0]) )
   for i in 2..strArray.size
      if  !strArray[i].nil?
         intArray[i-2] = Integer( strArray[i].chomp )
      end
   end
   intArray 
end

# Return: the sum of the values 
def sumSlice(values, id, sliceSize)
   start = id * sliceSize
   stop = start + sliceSize - 1
   myTotal = 0
   for i in start..stop
      myTotal += values[i]
   end
   myTotal
end

def sumInParallel(values, numThreads)
   sliceSize = values.size / numThreads
   threadArray = Array.new( numThreads )
   result = 0
   lock = Mutex.new
       
   (1..numThreads-1).each do | i |
       threadArray[i] = Thread.new { 
                         myTotal = sumSlice(values, 
                                              i,
                                              sliceSize) 
                         lock.synchronize {
                             result += myTotal
                         }
       }
   end

   myTotal  = sumSlice(values, 0, sliceSize)

   leftovers = values.size % numThreads
   if leftovers > 0
      for i in values.size-leftovers..values.size-1
         myTotal += values[i]
      end
   end

   lock.synchronize {
      result += myTotal
   }

   for i in 1..numThreads-1
      threadArray[i].join
   end

   result
end

def main
   checkCommandLine

   values = readFile

   startTime = Time.now
   total = sumInParallel(values, Integer( ARGV[1] ) )
   endTime = Time.now

   interval = (endTime - startTime).to_f
   puts "\nThe sum is #{total}\n"
   printf(" and computing it took %.9f seconds.\n\n", interval)
end

main

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ ruby [12@cat array_sum.rb[C./tasked_array_sum /home/cs/214/labs/12/numbers/1000000numbers.txt 4[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Ccat array_sum.rb [Kruby [Karray_sum.rb /home/cs/l[K214/labs/12/numbers/1000000numbers.txt 1

The sum is 50473230
 and computing it took 0.043819963 seconds.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ ruby array_sum.rb /home/cs/214/labs/12/numbers/1000000numbers.txt 1[K2

The sum is 50473230
 and computing it took 0.044309724 seconds.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ ruby array_sum.rb /home/cs/214/labs/12/numbers/1000000numbers.txt 2[K3

The sum is 50473230
 and computing it took 0.044220661 seconds.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ ruby array_sum.rb /home/cs/214/labs/12/numbers/1000000numbers.txt 3[K4

The sum is 50473230
 and computing it took 0.045346069 seconds.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/ruby[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/ruby[00m$ exit

Script done on 2023-04-08 22:53:20-04:00 [COMMAND_EXIT_CODE="0"]
