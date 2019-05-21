class Piece
  attr_reader :symbol, :color, :board, :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @symbol
  end

  def to_s

  end

  def empty?

  end

  def valid_moves

  end

  def pos=(val)
  
  end
  
  # def inspect
    # print "#{@symbol} #{@color}"
  # end

end
