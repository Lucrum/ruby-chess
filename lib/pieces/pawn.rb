# frozen_string_literal: true

# class for pawns
class Pawn < ChessPiece
  def initialize(color)
    super('white', "\u2384")
    @first_move = true
  end

  def moves(start_coords)
    basic_moveset(start_coords)
  end

  def basic_moveset(start_coords)
    moveset = []
    forward = @first_move ? 2 : 1
    if @color == 'white'
      forward.times do |x|
        moveset.append([start_coords[0], start_coords[1]])
      end
    else

    end
  end
end
