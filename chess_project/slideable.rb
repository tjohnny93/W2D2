
class Rook < Piece
  def initialize(color, board, pos)
    super
    symbol
  end
  
  def symbol
    @symbol = "R "
  end

end

class Queen < Piece
  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = "Q "
  end

end

class Bishop < Piece

  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = "B "
  end

end