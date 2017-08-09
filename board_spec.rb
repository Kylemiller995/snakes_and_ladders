require('minitest/autorun')
require_relative('./board.rb')
require_relative('./player.rb')

class TestBoard < MiniTest::Test

  def setup
    @board = Board.new((1..16).to_a, [], 1)

    @players = Player.new("Heather", 10, "red", 1)
    @player_2 = Player.new("Kyle", 0, "blue", 2)
  end

  def test_tiles
    assert_equal([1..16], @board.tiles)
  end

  def test_player
    assert_equal([], @board.players)
  end

  def test_turn
    assert_equal(1, @board.turn)
  end

  def test_add_player__1
    assert_equal(["Heather"], @board.add_player(@players.name))
  end

  def test_win_condition
    assert_equal(true, @board.win_condition(@players.position))
  end

  def test_add_player__2
    @board.add_player(@players.name)
    @board.add_player(@player_2.name)
    assert_equal(["Heather", "Kyle"], @board.players)
  end

  def test_next_turn
  @board.next_turn(@player)
  actual =
    assert_equal(true, @board.turn_tracker(@players.play_turn))
  end

  def test_snake
    assert_equal(15, @board.snake(@players.position))
  end

end
