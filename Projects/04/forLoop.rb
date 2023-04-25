def fact(n)
    answer =1.0

    for i in 2..n
        answer *= i
    end

    return answer
end

if __FILE__ == $0
    puts "Num: "
    n = gets.to_f

    puts "#{fact(n)}"
end