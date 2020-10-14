require 'pry'

class Game

  attr_reader :player1, :player2, :players, :board

  # All winning positions sotred in a global constant
  $WINNING_POSITIONS = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [7, 5, 3], [4, 5, 6], [1, 5, 9], [7, 8, 9]]

  def initialize
    @board = Board.new
    create_players
    @players = [player1, player2]
    display_start_info
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

  def turn
    @players.each {|player|
      @board.show_board
      get_input(player)
      if check_win(player) == false
        p "#{player.name} is winning."
      end
    }
  end

  def get_input(player)
    Display.player_turn_start(player.name)
      where = gets.chomp.to_i
      if @board.cell_empty?(where)
        @board.update(where, player.mark)
      else 
        Display.cell_not_empty_error(@board.matrix[where])
      end
  end

  def check_win(player)
    player_moves = (@board.matrix.select {|k, v| v == (player.mark)}).keys
    $WINNING_POSITIONS.each do |trio|
      (trio - player_moves).empty?
    end
  end
end
