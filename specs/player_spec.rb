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
end



