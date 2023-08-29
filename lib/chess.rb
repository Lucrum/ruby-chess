# frozen_string_literal: true

require_relative 'board'

# main game logic class
class Chess
  def initialize(board = Board.new, turn: false)
    @board = board
    @turn = turn # false = white, true = black
  end

  def game_loop
  end
end
