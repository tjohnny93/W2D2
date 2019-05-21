require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    symbol
  end

  def moves

  end

  def symbol
    @symbol = "  " 
  end


end

