# frozen_string_literal: true

require 'pry'

class Display
  def show_board(matrix)
    puts  "\n
    | #{matrix[7] || 7 } | #{matrix[8] || 8 } | #{matrix[9] || 9 } |\n
    | #{matrix[4] || 4 } | #{matrix[5] || 5 } | #{matrix[6] || 6 } |\n
    | #{matrix[1] || 1 } | #{matrix[2] || 2 } | #{matrix[3] || 3 } |\n
    "
  end

  def player_intro(player)
    puts "\nHello #{player.name}! What is your name?\n"
  end

  def players_mark(player1, player2)
    puts "\n#{player1.name} plays with #{player1.mark} and #{player2.name} plays with #{player2.mark}.\n"
  end

  def game_start(player1, player2)
    puts "\n#{player1.name} and #{player2.name} will take turn until someone wins or until the board is full. May the best win!\n"
  end

  def show_player(player)
    puts "\n#{player.name} plays with #{player.mark}. #{player.name}'s score is #{player.score}"
  end

  def player_turn_start(player)
    puts "\n#{player.name}, what is your move?"
  end

  def cell_not_empty_error(mark)
    puts "\nERROR - There is already a #{mark} here!"
  end
end
