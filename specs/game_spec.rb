require ('minitest/autorun')
require ('minitest/rg')
require_relative ("../game.rb")


class TestGame < MiniTest::Test
  def setup
    @game = Game.new
  end

  def test_has_empty_players_array
    assert_equal(0, @game.players_array.count)
  end
end