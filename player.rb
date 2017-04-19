class Player

  attr_reader :name, :position
  def initialize(name)
    @name = name
    @position = 1
  end 

  def move(new_position)
    @position = new_position
  end 
end 