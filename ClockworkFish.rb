require 'ClockworkFish'

class ClockworkFish < Fish
  def initialize
    super
    @stomach = 0
    @oxygen  = 0
  end

  def eat
    # NOP
  end

  def breathe
    # NOP
  end

  def use_energy
    # NOP
  end

  # The method from Being implements this normally and returns true if it was
  # able to use energy.
  # Also assume ClockworkFish is always wound up :)
  def use_energy
    return true
  end

  def alive?
    return true
  end
end