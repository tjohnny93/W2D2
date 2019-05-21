require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"

class Display
  def initialize
    @cursor = Cursor.new([0,0], Board.new)
  end

  def render
    @cursor.board.each do |row|
      puts "#{row.join(" ")}"
    end
  end

end

test = Display.new
test.render