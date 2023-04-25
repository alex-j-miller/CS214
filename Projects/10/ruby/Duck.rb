# Duck.rb | Defines the Duck class which inherits attributes and methods
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

end