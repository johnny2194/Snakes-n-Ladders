class Player

  attr_reader :name, :position
  def initialize(name)
    @name = name
    @position = 1
  end 

  def move(new_position)
    @position = new_position
  end 

  def increment_position(number_incremented)
    @position += number_incremented
  end

  def roll_dice
    dice = Random.new
    return dice.rand(1..6)
  end 
end 