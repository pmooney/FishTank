require 'Being'

class Fish < Being
  def initialize
    super
    @alive = true
  end
 
  def swim
    return use_energy # returns false if ran out of energy
  end
end