# frozen_string_literal: true

require 'pry'

class Player
  attr_reader :mark, :score
  attr_accessor :name

  def initialize(name, mark)
    @name = name
    @mark = mark
    @score = 0
  end

  def move(where)
    where
  end

  def has_won?
    false
  end
end
