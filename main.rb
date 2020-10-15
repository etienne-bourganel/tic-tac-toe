# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'
require_relative 'display'
require_relative 'game'

game = Game.new
game.one_flow
game.another_game?
