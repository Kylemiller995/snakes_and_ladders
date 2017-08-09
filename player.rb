class Player

  attr_reader(:name, :position, :color, :turn_order)
  attr_writer(:position)

  def initialize(name, position, color, turn_order)
    @name = name
    @position = position
    @color = color
    @turn_order = turn_order
  end

  def play_turn(dice)
    @position += dice.roll()
  end


end
