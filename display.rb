# frozen_string_literal: true

require 'pry'

class Display
  def show_board(matrix)
    puts  "\n
    | #{matrix[6] || 6 } | #{matrix[7] || 7 } | #{matrix[8] || 8 } |\n
    | #{matrix[3] || 3 } | #{matrix[4] || 4 } | #{matrix[5] || 5 } |\n
    | #{matrix[0] || 0 } | #{matrix[1] || 1 } | #{matrix[2] || 2 } |\n
    "
  end

  def show_player(player)
    puts "#{player.name} plays with #{player.mark}. #{player.name}'s score is #{player.score}"
  end

end
