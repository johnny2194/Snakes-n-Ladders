require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player.rb')

class TestPlayer < MiniTest::Test
  def setup
    @player = Player.new("Bob")
  end 

  def test_get_player_name
    assert_equal("Bob", @player.name)
  end

  def test_get_player_position
    assert_equal(1, @player.position)
  end

  def test_player_can_move
    @player.move(3)
    assert_equal(3, @player.position)
  end 
    
  def test_player_can_increment_position
    @player.increment_position(3)
    assert_equal(4, @player.position)
  end

  def test_player_rolls_dice_returns_number_between_one_and_six
    number_rolled = @player.roll_dice
    is_between_one_and_six = number_rolled >= 1 && number_rolled <= 6
    assert(is_between_one_and_six)
  end 
  
end



