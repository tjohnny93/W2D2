
class Knight < Piece
  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = " ♞ "
  end

end

class King < Piece
   def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = " ♚ "
  end

end