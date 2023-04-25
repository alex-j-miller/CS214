Script started on 2023-04-03 19:52:43-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb Goose.rb P[KOwl.rb 
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

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './Bird.rb'

class Duck < Bird
    def call
        'Quack!'
    end

end# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './Bird.rb'

class Goose < Bird
    def call
        'Honk!'
    end
end# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Alex Miller
# Date: 3/4
####################################################

require './Bird.rb'

class Owl < Bird
    def call
        'Whoo-hoo!'
    end
end]0;ajm94@gold17: ~/Desktop/CS 214/Labs/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb Goose.rb Owl.rb [Kruby birds.rb 

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaawk!
DonaldDuck says Quack!
MotherGoose says Honk!
WoodseyOwl says Whoo-hoo!


]0;ajm94@gold17: ~/Desktop/CS 214/Labs/10/ruby[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/10/ruby[00m$ exit

Script done on 2023-04-03 19:53:07-04:00 [COMMAND_EXIT_CODE="0"]
