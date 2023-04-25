# Alex Miller
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
  
end