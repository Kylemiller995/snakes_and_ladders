class Dice

  attr_reader(:sides, :quantity)
  attr_accessor(:result)

  def initialize(sides, quantity)
    @sides = sides
    @quantity = quantity
    @result = 0
  end

  def roll()
    number_range = @sides * @quantity
    rand(number_range) + 1
    # return @result += @dice.roll(@sides, @quantity)



    # number_range = @sides * @quantity
    # return number_range.rand()
    # return @result += (@sides * @quantity).rand


  end

end
