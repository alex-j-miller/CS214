def print_array(arr)
    arr.each { |elem| puts elem }
  end
  
  def read_array(size)
    arr = []
    size.times do |i|
      print "Enter a value for element #{i}: "
      arr << gets.chomp.to_f
    end
    arr
  end
  
  print "How many values do you want in the array? "
  num_values = gets.chomp.to_i
  
  arr = read_array(num_values)
  print_array(arr)