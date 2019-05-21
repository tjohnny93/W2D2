
class Knight < Piece
  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = "k "
  end

end

class King < Piece
   def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = "K'"
  end

end