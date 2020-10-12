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

  def update(where, mark)
    if @matrix[where] == nil
      @matrix[where] = mark
    else
      p "ERROR - There is already a #{@matrix[where]} there!"
    end
  end
end
