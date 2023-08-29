# frozen_string_literal: true

# class for the chess board
class Board
  def initialize
    @state = Array.new(8) { Array.new(8) }
  end
end
