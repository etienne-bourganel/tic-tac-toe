# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'
require_relative 'display'

board = Board.new

puts 'Hello! Player 1, what is your name?'
player1 = Player.new(gets.chomp,'X')
puts "Welcome #{player1.name}. You are playing with #{player1.mark}"

puts 'Player 2, what is your name?'
player2 = Player.new(gets.chomp, 'O')
puts "Welcome #{player2.name}. You are playing with #{player2.mark}"

display = Display.new
display.show_board(board.matrix)
board.update(player1.move(1), player1.mark)
board.update(player2.move(8), player2.mark)
board.update(player1.move(8), player2.mark)
display.show_board(board.matrix)
display.show_player(player1)

binding.pry
