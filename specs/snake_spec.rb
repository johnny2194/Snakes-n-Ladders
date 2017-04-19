require ('minitest/autorun')
require ('minitest/rg')
require_relative('../snake.rb')

class TestSnake < MiniTest::Test
  def setup
    @snake = Snake.new(34, 11)
  end

  def test_can_get_head_position_from_snake
    assert_equal(34, @snake.head)
  end

  def test_can_get_bottom_position_from_snake
    assert_equal(11, @snake.tail)
  end
end