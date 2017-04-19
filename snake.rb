class Snake
  attr_reader :head, :tail
  def initialize(head, tail)
    @tail = tail
    @head = head
  end
end