require_relative('player.rb')
require_relative('ladder.rb')
require_relative('snake.rb')

class Game
  attr_reader :players_array, :current_player, :ladders, :snakes
  def initialize()
    @players_array = []
    @current_player = nil
    @ladders = []
    @snakes = []
  end 

  def add_player(name)
    @players_array << Player.new(name)
  end 

  def remove_player(name)
    for player in @players_array
      if player.name == name
        @players_array.delete(player)
        break
      end
      # goes through players_array and deletes player is name matches. then breaks out of loop
    end
  end

  def next_player
    if @current_player == nil
      @current_player = @players_array[0]
    else
      current_index = @players_array.index(@current_player)
      if current_index < @players_array.count - 1
        @current_player = @players_array[current_index+ 1]
      else
        @current_player = @players_array[0]
      end
    end
  end

  def add_ladder(bottom, top)
    @ladders << Ladder.new(bottom, top)
  end 

  def add_snake(head, tail)
    @snakes << Snake.new(head, tail)
  end 



end 