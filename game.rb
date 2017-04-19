require_relative('player.rb')

class Game
  attr_reader :players_array
  def initialize()
    @players_array = []
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
      
    end
  end

end 