require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
require "byebug"

class Display
  attr_reader :board
  
  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    # debugger
    board.board.each do |row|
      row.each_with_index do |ele, i|
        if i == 7
          puts (ele.symbol).
        else
          print ele.symbol
        end
      end
    end
  end

end

test = Display.new(Board.new)
test.render