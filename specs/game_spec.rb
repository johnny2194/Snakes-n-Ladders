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

  

end