# frozen_string_literal: true

# class for kings
class King < ChessPiece
  def initialize
    super('white', "\u2384")
  end

  def moves(start_coords)
    basic_moveset(start_coords)
  end

  def basic_moveset(start_coords)
    movement = [-1, 0, 1]
    x_moves = movement.map { |x| x + start_coords[0] }
    y_moves = movement.map { |y| y + start_coords[1] }
    moveset = x_moves.product(y_moves)
    moveset.delete(start_coords)
    moveset
  end
end
