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
end