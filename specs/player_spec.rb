require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player.rb')

class TestPlayer < MiniTest::Test
  def setup
    @player = Player.new("Bob")
    @player2 = Player.new("Agnus")
    @player2.move_to_space(97)
  end 

  def test_get_player_name
    assert_equal("Bob", @player.name)
  end

  def test_get_player_position
    assert_equal(1, @player.position)
  end

  def test_player_can_move
    @player.move_to_space(3)
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

  def test_player_too_close_to_100_doesnt_move
    @player2.increment_position(4)
    assert_equal(97, @player2.position)
  end


end



