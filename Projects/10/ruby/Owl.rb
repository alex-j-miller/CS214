# Owl.rb | Defines the Owl class which inherits attributes and methods
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
end