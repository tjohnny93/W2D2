class Piece
  attr_reader :value
  def initialize
    @value = "P"
  end

  def inspect
    print "<P>"
  end

end

