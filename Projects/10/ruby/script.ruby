Script started on 2023-04-06 20:01:35-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb FlyingBird.rb Goose.rb Kiwi.rb Ostrich.rb Owl.rb Penguin.rb WalkingBird.rb 
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end

    def call
        'Squaaaaaaawk!'
    end
    
    def className
        self.class.to_s
    end
    
    def print
        puts name + className + " says " + call
    end
  
  end# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird1 = Duck.new "Donald"
bird1.print
bird2 = Goose.new "Mother"
bird2.print
bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print
bird5 = Ostrich.new "Orville"
bird5.print
bird6 = Kiwi.new "Kiki"
bird6.print

puts "\n\n"# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird
    def call
        'Quack!'
    end

    def className
        self.class.to_s
    end
      
    def print
        puts name + className + ' ' + movement + " by and said " + call
    end

end# Alex Miller
# 4/6

require './Bird.rb'

class FlyingBird < Bird
  
  def movement
    return "flew"
  end
  
end# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird
    def call
        'Honk!'
    end

    def className
        self.class.to_s
    end
      
    def print
        puts name + className + ' ' + movement + " by and said " + call
    end
end# Alex Miller
# 4/6

require './WalkingBird.rb'

class Kiwi < WalkingBird

  def call
    '*Kiwi noise*'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end# Alex Miller
# 4/6

require './WalkingBird.rb'

class Ostrich < WalkingBird

  def call
    'Snork'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird
    def call
        'Whoo-hoo!'
    end

    def className
        self.class.to_s
    end
      
    def print
        puts name + className + ' ' + movement + " by and said " + call
    end
end# Alex Miller
# 4/6

require './WalkingBird.rb'

class Penguin < WalkingBird

  def call
    'Huh-huh-huh-huuuuh!'
  end
  
  def className
    self.class.to_s
  end
  
  def print
    puts name + className + ' ' + movement + " by and said " + call
  end
  
end# Alex Miller
# 4/6

require './Bird.rb'

class WalkingBird < Bird
  
  def movement
    return "walked"
  end
  
end]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ruby[00m$ ruby dirb[K[K[K[Kbirds.rb 

Welcome to the Bird Park!

DonaldDuck flew by and said Quack!
MotherGoose flew by and said Honk!
WoodseyOwl flew by and said Whoo-hoo!
PeterPenguin walked by and said Huh-huh-huh-huuuuh!
OrvilleOstrich walked by and said Snork
KikiKiwi walked by and said *Kiwi noise*


]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ruby[00m$ exit

Script done on 2023-04-06 20:02:05-04:00 [COMMAND_EXIT_CODE="0"]
