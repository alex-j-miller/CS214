def letterGrade (g)
    case g
    when 9..10
        return 'A'
    when 8..9
        return 'B'
    when 7..8
        return 'C'
    when 6..7
        return 'D'
    else
        return 'F'
    end
end

if __FILE__ == $0
    puts "Num: "
    grade = gets.chomp.to_f
    puts letterGrade(grade)
end