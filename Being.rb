class Being
  attr_reader :stomach, :oxygen
  attr_accessor :alive

  def initialize
    @stomach = 5
    @oxygen  = 5
    @alive   = 1
  end

  def eat
    if alive? == false
      puts "WARNING: a dead fish is being force fed"
      return
    else
      puts "Being is alive"
    end

    @stomach += 1

    if @stomach <= 0
      @alive = false
    end
  end

  def use_energy
    if @stomach <= 0 || @oxygen <= 0
      @alive = false
      return false
    else
      @stomach -= 1 unless @stomach <= 0
      @oxygen  -= 1 unless @oxygen  <= 0
      return true
    end
  end

  def breathe
    #
    # the idea here is that it takes one unit of oxygen from the tank...
    #
    @oxygen += 1 unless oxygen >= 5
  end

  def alive?
    return @alive
  end

end