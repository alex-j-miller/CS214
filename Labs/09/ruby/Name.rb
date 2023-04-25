# Alex Miller
# 3/30
####################

class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end
  
    attr_reader :first, :middle, :last
  
    def fullName
      @first + " " + @middle + " " + @last
    end
  
    def print
      puts fullName
      fullName
    end
end
