
class Rook < Piece
  def initialize(color, board, pos)
    super
    symbol
  end
  
  def symbol
    @symbol = " ♜ " 
  end

end

class Queen < Piece
  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = " ♕ "
  end

end

class Bishop < Piece

  def initialize(color, board, pos)
    super
    symbol
  end

  def symbol
    @symbol = " ♝ "
  end

end