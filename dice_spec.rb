require('minitest/autorun')
require_relative('./dice')


class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new(6, 1)
  end
  #
  # def test_dice_sides()
  #   assert_equal(6, @dice.sides)
  # end
  #
  # def test_dice_quantity()
  #   assert_equal(1, @dice.quantity)
  # end

  def test_dice_roll
    # @result += @dice.roll(@sides, @quantity)
    assert_includes(1..6, @dice.roll(@sides, @quantity))

    #  why can't we add to result??
  end


end
