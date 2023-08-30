# frozen_string_literal: true

# class for the chess board
class Board
  def initialize(state = nil)
    @state = state
    @encodings = { 'wk' => "\u2654", 'wq' => "\u2655", 'wr' => "\u2656",
                   'wb' => "\u2657", 'wn' => "\u2658", 'wp' => "\u2659",
                   'bk' => "\u265A", 'bq' => "\u265B", 'br' => "\u265C",
                   'bb' => "\u265D", 'bn' => "\u265E", 'bp' => "\u265F" }
  end

  def setup
    @state = [%w[wr wn wb wq wk wb wn wr],
              %w[wp wp wp wp wp wp wp wp],
              [nil, nil, nil, nil, nil, nil, nil, nil],
              [nil, nil, nil, nil, nil, nil, nil, nil],
              [nil, nil, nil, nil, nil, nil, nil, nil],
              [nil, nil, nil, nil, nil, nil, nil, nil],
              %w[bp bp bp bp bp bp bp bp],
              %w[br bn bb bq bk bb bn br]]
    @encodings
  end

  def encode_piece(piece)
    @encodings[piece]
  end

  def valid_move?(piece, start_notation)
  end

  def notation_to_coords(notation)
    [notation[0].ord - 65, notation[1].to_i - 1]
  end

  def coords_to_notation(column, row)
    "#{(column + 65).chr}#{row + 1}"
  end
end
