# frozen_string_literal: true

require 'pry'

class Player
  attr_reader :name, :mark, :score

  def initialize(name,mark)
    @name = name
    @mark = mark
    @score = 0
  end

  def move(where)
    where
  end
end
