
class Pawn < Piece
   def initialize(color, board, pos)
    super
    symbol
  end
  
  def symbol
    @symbol = " ♟ "
  end

end