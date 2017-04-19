require ('minitest/autorun')
require ('minitest/rg')
require_relative('../ladder.rb')

class TestLadder < MiniTest::Test
  def setup
    @ladder = Ladder.new(11, 34)
  end

  def test_can_get_top_position_from_ladder
    assert_equal(34, @ladder.top)
  end
end