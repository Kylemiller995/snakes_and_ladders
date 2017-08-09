class Board

  attr_reader(:tiles, :players, :turn)

  def initialize(tiles, players, turn)
    @tiles = tiles
    @players = players
    @turn = turn
  end

  def add_player(player)
    @players << player
  end

  def win_condition(position)
    if @tiles.last() == position
      return true
    end
    return false
  end

  def turn_tracker(playerturn)
    for player in @board.players
      player.playerturn
      @board.win_condition
    end
  end

  def snake(position)
    position -= 3 if @tiles[5] == position
    position += 5 if @tiles[9] == position
  end

  def next_turn(player)
    for person in @board.players
      player.play_turn
    end
   (this was confusing)
  end

end
