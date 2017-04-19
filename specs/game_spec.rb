require ('minitest/autorun')
require ('minitest/rg')
require_relative ("../game.rb")


class TestGame < MiniTest::Test
  def setup
    @game = Game.new

    @game2 = Game.new
    @game2.add_player("Bob")
  end

  def test_has_empty_players_array
    assert_equal(0, @game.players_array.count)
  end

  def test_can_add_new_player
   actual = @game2.players_array.first.name
   assert_equal("Bob", actual)
  end 

  def test_can_remove_player
    @game2.remove_player("Bob")
    assert_equal(0, @game.players_array.count)
  end

def test_next_player
  @game2.next_player
  assert_equal("Bob", @game2.current_player.name)
end

  # this adds a player to players array then checks if that player is there by making sure it has the same name as given when added
end