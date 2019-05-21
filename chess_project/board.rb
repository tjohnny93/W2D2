require_relative "piece.rb"
require_relative "slideable.rb"
require_relative "stepable.rb"
require_relative "pawn.rb"
require_relative "null_piece.rb"
require "byebug"

class Board
  attr_reader :board
  def initialize
    @board = Array.new(8) {Array.new(8, NullPiece.instance)} 
    populate_white_pieces
    populate_black_pieces
  end

  def move_piece(start_pos, end_pos)
    
    if !valid_pos?(start_pos) && !valid_pos?(end_pos)
      raise "One of the entered pos is outside of the board"
    end

    raise "No piece at start pos" if !self[start_pos].is_a?(Piece)
    
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end

  def [](pos) #pos = [0,0]
    debugger
    row, col = pos
    @board[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @board[row][col] = piece
  end

  def valid_pos?(pos)
    if (pos[0] <= 7 && pos[0] >= 0) && (pos[1] <= 7 && pos[1] >= 0)
      return true
    end
    false
  end

  def populate_white_pieces
    @board.each_with_index do |row, i|
      row.each_with_index do |col, j|
        if i == 0 && (j == 0 || j == 7) 
          @board[i][j] = Rook.new(:white, self, [i, j])
        elsif i == 0 && (j == 1 || j == 6)
          @board[i][j] = Knight.new(:white, self, [i, j])
        elsif i == 0 && (j == 2 || j == 5)
          @board[i][j] = Bishop.new(:white, self, [i, j])
        elsif i == 0 && (j == 3)
          @board[i][j] = Queen.new(:white, self, [i, j])
        elsif i == 0 && (j == 4)
          @board[i][j] = King.new(:white, self, [i, j])
        elsif i == 1
          @board[i][j] = Pawn.new(:white, self, [i, j])
        end
      end
    end
  end

  def populate_black_pieces
    @board.each_with_index do |row, i|
      row.each_with_index do |col, j|
        if i == 7 && (j == 0 || j == 7) 
          @board[i][j] = Rook.new(:black, self, [i, j])
        elsif i == 7 && (j == 1 || j == 6)
          @board[i][j] = Knight.new(:black, self, [i, j])
        elsif i == 7 && (j == 2 || j == 5)
          @board[i][j] = Bishop.new(:black, self, [i, j])
        elsif i == 7 && (j == 3)
          @board[i][j] = Queen.new(:black, self, [i, j])
        elsif i == 7 && (j == 4)
          @board[i][j] = King.new(:black, self, [i, j])
        elsif i == 6
          @board[i][j] = Pawn.new(:black, self, [i, j])
        end
      end
    end
  end

end

game = Board.new
p game.board
# p game.[]([0,0])
