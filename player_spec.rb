require('minitest/autorun')
require_relative('./player')
require_relative('./dice')

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Heather", 0, "red", 1)

    @dice = Dice.new(6, 1)
  end

  # def test_player_name
  #   assert_equal('Heather', @player.name)
  # end
  #
  # def test_player_position
  #   assert_equal(0 , @player.position)
  # end
  #
  # def test_player_color
  #   assert_equal('red', @player.color)
  # end
  #
  # def test_player_turn_order
  #   assert_equal(1, @player.turn_order)
  # end

  def test_play_turn
    expected = 0
    assert_equal(expected, @player.play_turn)
  end

end
