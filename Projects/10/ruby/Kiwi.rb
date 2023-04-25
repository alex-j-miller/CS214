# Alex Miller
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
  
end