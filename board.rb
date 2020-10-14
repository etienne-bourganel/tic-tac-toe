# frozen_string_literal: true

require 'pry'

class Board
  attr_reader :matrix

  def initialize
    @matrix = {
      1 => nil, 2 => nil, 3 => nil, 
      4 => nil, 5 => nil, 6 => nil, 
      7 => nil, 8 => nil, 9 => nil
      }
  end

  def cell_empty?(where)
    @matrix[where] == nil
  end

  def update(where, mark)
    @matrix[where] = mark
  end

  def show_board
    puts  "\n
    | #{@matrix[7] || 7 } | #{@matrix[8] || 8 } | #{@matrix[9] || 9 } |\n
    | #{@matrix[4] || 4 } | #{@matrix[5] || 5 } | #{@matrix[6] || 6 } |\n
    | #{@matrix[1] || 1 } | #{@matrix[2] || 2 } | #{@matrix[3] || 3 } |\n
    "
  end
end
