Script started on 2023-02-16 21:00:30-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ cat sc[K[Kquad.rb 
def quadratic_roots(a, b, c)
    if a != 0
      arg = b**2 - 4*a*c
      if arg >= 0
        root1 = (-b + Math.sqrt(arg))/(2*a)
        root2 = (-b - Math.sqrt(arg))/(2*a)
        return [root1, root2]
      else
        puts "\n*** quadratic_roots: b^2 - 4ac is negative!"
        return [0, 0]
      end
    else
      puts "\n*** quadratic_roots: a is zero!"
      return [0, 0]
    end
  end

puts "Enter a: "
a = gets.chomp.to_f
puts "Enter b: "
b = gets.chomp.to_f
puts "Enter c: "
c = gets.chomp.to_f

roots = quadratic_roots(a, b, c)

if roots != [0, 0]
  puts "Root 1: #{roots[0]}"
  puts "Root 2: #{roots[1]}"
else
  puts "Invalid roots."
end]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ ruby s[Kquad.rb 
Enter a: 
1
Enter b: 
25
Enter c: 
1
Root 1: -0.04006420562288859
Root 2: -24.95993579437711
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ exit

Script done on 2023-02-16 21:00:46-05:00 [COMMAND_EXIT_CODE="0"]
