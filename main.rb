# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'
require_relative 'display'
require_relative 'game'

# Initialization of the game

board = Board.new
matrix = board.matrix
display = Display.new
player1 = Player.new('Player 1', 'X')
player2 = Player.new('Player 2', 'O')
players = [player1, player2]

display.player_intro(player1)
player1.name = gets.chomp
display.player_intro(player2)
player2.name = gets.chomp

display.players_mark(player1, player2)
display.game_start(player1, player2)

# Moves

players.each {|player|
  until player.has_won?
    players.each {|player|
    Display.new.show_board(matrix)
    Display.new.player_turn_start(player)
    where = gets.chomp.to_i
    if board.cell_empty?(where)
       board.update(where, player.mark)
    else 
      display.cell_not_empty_error(matrix[where])
    end
    }
  end
}

turn(players)

binding.pry
