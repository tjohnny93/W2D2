require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
require "byebug"

class Display
  def initialize
    @cursor = Cursor.new([0,0], Board.new)
  end

  def render
    debugger
    @cursor.board.each do |row|
      row.each do |ele|
        p ele.symbol
      end
    end
  end

end

test = Display.new
test.render