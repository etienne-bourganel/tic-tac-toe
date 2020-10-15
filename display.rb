# frozen_string_literal: true

require 'pry'

class Display

  def self.player_intro
    puts "\nHello, what is your name?\n"
  end

  def self.game_start(player1, player2)
    puts "\n#{player1.name} and #{player2.name} will take turn until someone wins or a draw. May the best win!\n"
    puts "\n#{player1.name} plays with #{player1.mark} and #{player2.name} plays with #{player2.mark}.\n"
  end

  def self.show_player(player)
    puts "\n#{player.name} plays with #{player.mark}. #{player.name}'s score is #{player.score}"
  end

  def self.player_turn_start(player_name)
    puts "\n#{player_name}, what is your move?"
  end

  def self.cell_not_empty_error(mark)
    puts "\nERROR - There is already a #{mark} here!"
  end

  def self.error_move_out_of_range
    puts "\nERROR! Please choose a cell betwwen 1 and 9."
  end

  def self.the_winner_is(player)
    puts "The winner is #{player.name}!"
  end

  def self.draw
    puts "It's a draw! Nobody wins!"
  end
end
