require('minitest/autorun')
require_relative('./player')
require_relative('./dice')

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Heather", 0, "red", 1)
    @player_2 = Player.new("Kyle", 0, "blue", 2)

    @dice = Dice.new(1, 1)
  end

  def test_player_name
    assert_equal('Heather', @player.name)
  end
  #
  def test_player_position
    assert_equal(0 , @player.position)
  end

  def test_player_color
    assert_equal('red', @player.color)
  end

  def test_player_turn_order
    assert_equal(1, @player.turn_order)
  end

  def test_play_turn()
    @player.play_turn(@dice)
    actual = @player.position
    assert_equal(1, actual)
  end





end
