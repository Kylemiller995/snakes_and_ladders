class Player
  attr_reader(:name, :position, :color, :turn_order)
  def initialize(name, position, color, turn_order)
    @name = name
    @position = position
    @color = color
    @turn_order = turn_order
  end

  def play_turn()
    @position += @dice.roll()
  end


end
