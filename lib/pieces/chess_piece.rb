# frozen_string_literal: true

# parent class for all pieces
class ChessPiece
  attr_reader :code, :identifier

  def initialize(code, identifier)
    @code = code
    @identifier = identifier
  end
end
