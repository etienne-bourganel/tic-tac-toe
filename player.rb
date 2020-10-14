# frozen_string_literal: true

require 'pry'

class Player
  attr_reader :mark
  attr_accessor :name, :score

  def initialize(name, mark)
    @name = name
    @mark = mark
    @score = 0
  end
end
