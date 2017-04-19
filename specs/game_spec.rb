require ('minitest/autorun')
require ('minitest/rg')
require_relative ("../game.rb")
require_relative('../player.rb')

class TestGame < MiniTest::Test
  def setup
    @game = Game.new
  end

  def test_has_empty_players_array
    assert_equal(0, @game.players_array.count)
  end

  def test_can_add_new_player
   @game.add_player("Bob")
   actual = @game.players_array.first.name
   assert_equal("Bob", actual)
  end 

  # this adds a player to players array then checks if that player is there by making sure it has the same name as given when added
end