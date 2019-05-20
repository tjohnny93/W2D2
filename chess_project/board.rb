require_relative "piece.rb"
require "byebug"
class Board
  attr_reader :board
  def initialize
    @board = [[Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new],
  [Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new],
  [Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new, Piece.new]
  ]
  end

  def move_piece(start_pos, end_pos)
    before = self[start_pos]
    after = self[end_pos]
    if valid_pos?(start_pos) && valid_pos?(end_pos)
    else 
      raise "No piece at start pos" if !before.is_a?(Piece)
    end
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end

  def [](pos) #pos = [0,0]
    @board[pos[0]][pos[1]]
  end

  def []=(pos, piece)
    @board[pos[0]][pos[1]] = piece
  end

  def valid_pos?(pos)
    if (pos[0] <= 7 && pos[0] >= 0) && (pos[1] <= 7 && pos[1] >= 0)
      return true
    end
    raise "Position is outside of the board"
  end

end

game = Board.new
game.move_piece([0,0], [4,4])
p game.board