require 'pry'

class Game

  attr_reader :player1, :player2, :players, :board, :winner

  # All winning positions sotred in a constant
  
  def initialize
    @board = Board.new
    create_players
    @players = [player1, player2]
    display_start_info
    @WIN_MOV = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [7, 5, 3], [4, 5, 6], [1, 5, 9], [7, 8, 9]]
    @winner = nil
  end

  def create_players
    player_name = get_name("Player 1")
    @player1 = Player.new(player_name, 'X')
    player_name = get_name("Player 2")
    @player2 = Player.new(player_name, 'O')
  end
  
  def get_name(player)
    puts "\nHi #{player}, what is your name?\n"
    return gets.chomp
  end

  def display_start_info
    Display.game_start(player1, player2)
  end

  def player_moves(player)
    (@board.matrix.select {|k, v| v == (player.mark)}).keys
  end

  def test_win(player)
    @WIN_MOV.each do |trio|
      if (trio - player_moves(player)).empty?
          @winner = player
          return true
      end
    end
  end

  def flow
    @board.show_board
    until (winner || draw) do
      @players.each do |player|
        turn(player)
      end
    end
    if winner
      announce_winner
    end
    if draw
      announce_draw
    end
  end

  def turn(player)
    if winner || draw
       return
    end
    Display.player_turn_start(player.name)
    where = get_input(player)
    manage_move(player, where)
    @board.show_board
  end

  def get_input(player)
    gets.chomp.to_i
  end

  def move_in_range?(where)
    if where.between?(1,9)
      return true
    end
  end

  def cell_empty?(where)
    if @board.cell_empty?(where)
      return true
    end
  end

  def announce_winner
    Display.the_winner_is(@winner)
  end

  def announce_draw
    Display.draw
  end

  def manage_move(player, where)
    if move_in_range?(where) == true
      if cell_empty?(where) == true
        @board.update(where, player.mark)
        test_win(player)
      else Display.cell_not_empty_error(@board.matrix[where])
      end
    else Display.error_move_out_of_range
    end
  end

  def draw
    if !(@board.matrix.values.include?(nil)) and !(@winner)
      return true
    else return false
    end
  end

end
