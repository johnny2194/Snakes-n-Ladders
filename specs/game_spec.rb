require ('minitest/autorun')
require ('minitest/rg')
require_relative ("../game.rb")


class TestGame < MiniTest::Test
  def setup
    @game = Game.new

    @game2 = Game.new
    @game2.add_player("Bob")

    @game3 = Game.new
    @game3.add_player("Bob")
    @game3.add_player("Kate")
    @game3.next_player

    @game4 = Game.new
    @game4.add_player("Bob")
    @game4.add_player("Kate")
    @game4.next_player
    @game4.next_player

    @game5 = Game.new
    @game5.add_player("Bob")
    @game5.add_player("Kate")
    @game5.add_player("Doug")
    @game5.add_snake(23,10)
    @game5.add_snake(46,23)
    @game5.add_ladder(34,54)
    @game5.add_ladder(7, 67)
  end

  def test_has_empty_players_array
    assert_equal(0, @game.players_array.count)
  end

  # this adds a player to players array then checks if that player is there by making sure it has the same name as given when added

  def test_can_add_new_player
   actual = @game2.players_array.first.name
   assert_equal("Bob", actual)
  end 

  def test_can_remove_player
    @game2.remove_player("Bob")
    assert_equal(0, @game.players_array.count)
  end

  def test_next_player_sets_current_player_when_starting_value_is_nil
    @game2.next_player
    assert_equal("Bob", @game2.current_player.name)
  end

  def test_next_player_changes_player_to_next_index_in_players_array_if_not_at_end
    @game3.next_player
    assert_equal("Kate", @game3.current_player.name)
  end

  def test_next_player_is_set_to_first_player_when_at_end_of_players_array
    @game4.next_player
    assert_equal("Bob", @game4.current_player.name)
  end

  def test_ladders_array_is_empty_at_first
    assert_equal(0, @game.ladders.count)
  end

  def test_add_ladder
    @game.add_ladder(23, 43)
    ladder_position = [@game.ladders.first.bottom, @game.ladders.first.top]
    assert_equal([23, 43], ladder_position)
  end

  def test_add_two_ladders
    @game.add_ladder(23, 43)
    @game.add_ladder(45, 70)
    assert_equal(2, @game.ladders.count)
  end 

  def test_snake_array_is_empty_at_first
    assert_equal(0, @game.snakes.count)
  end

  def test_add_snake
    @game.add_snake(43, 23)
    snake_position = [@game.snakes.first.head, @game.snakes.first.tail]
    assert_equal([43, 23], snake_position)
  end

  def test_add_two_snakes
    @game.add_snake(43, 23)
    @game.add_snake(70, 45)
    assert_equal(2, @game.snakes.count)
  end

  def test_reset 
    @game5.reset
    assert_equal(0, @game5.snakes.count)
    assert_equal(0, @game5.ladders.count)
    assert_equal(0, @game5.players_array.count)
    assert_nil(@game5.current_player)
  end 

  def test_check_win_while_not_winning
    refute(@game3.check_win(@game3.current_player))
  end

  def test_check_win_while_not_winning
    @game3.current_player.move(100)
    assert(@game3.check_win(@game3.current_player))
  end


end