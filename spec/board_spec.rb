# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  describe '#coords_to_notation' do
    subject(:board_notation) { described_class.new }
    it 'converts coordinates to algebraic notation' do
      expect(board_notation.coords_to_notation(4, 3)).to eq('E4')
      expect(board_notation.coords_to_notation(3, 7)).to eq('D8')
      expect(board_notation.coords_to_notation(5, 5)).to eq('F6')
      expect(board_notation.coords_to_notation(1, 1)).to eq('B2')
      expect(board_notation.coords_to_notation(0, 0)).to eq('A1')
      expect(board_notation.coords_to_notation(6, 4)).to eq('G5')
    end
  end

  describe '#notation_to_coords' do
    subject(:board_notation) { described_class.new }
    it 'converts algebraic notation to coordinates' do
      expect(board_notation.notation_to_coords('E4')).to eq([4, 3])
      expect(board_notation.notation_to_coords('D8')).to eq([3, 7])
      expect(board_notation.notation_to_coords('F6')).to eq([5, 5])
      expect(board_notation.notation_to_coords('B2')).to eq([1, 1])
      expect(board_notation.notation_to_coords('A1')).to eq([0, 0])
      expect(board_notation.notation_to_coords('G5')).to eq([6, 4])
    end
  end
end
