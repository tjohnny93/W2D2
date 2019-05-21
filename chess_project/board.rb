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
    
    if !valid_pos?(start_pos) && !valid_pos?(end_pos)
      raise "One of the entered pos is outside of the board"
    end

    raise "No piece at start pos" if !self[start_pos].is_a?(Piece)
    
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
    false
  end

end

game = Board.new
game.move_piece([-1,5], [5,6])
p game.board
