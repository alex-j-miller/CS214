# Alex Miller
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
  
end