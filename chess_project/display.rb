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
    board.board.each_with_index do |row, row_i|
      row.each_with_index do |ele, col_j|
        color_bg(row_i, col_j, ele)



        # if j == 7
        #   puts (ele.symbol).
        # else
        #   print ele.symbol
        # end
      end
    end
  end

  private
  def color_bg(row_i, col_j, ele)
    if row_i.even? 
          if col_j.even?
            if ele.color == :white
              print (ele.symbol).colorize(:color => :red, :background => :yellow)
            else
              print (ele.symbol).colorize(:color => :blue, :background => :yellow)
            end
          else
            if col_j == 7
              if ele.color == :white
                puts (ele.symbol).colorize(:color => :red, :background => :black)
              else
                puts (ele.symbol).colorize(:color => :blue, :background => :black)
              end
            else
              if ele.color == :white
                print (ele.symbol).colorize(:color => :red, :background => :black)
              else
                print (ele.symbol).colorize(:color => :blue, :background => :black)
              end
            end
          end
    else
        if col_j.odd?
            if col_j == 7
              if ele.color == :white
                puts (ele.symbol).colorize(:color => :red, :background => :yellow)
              else
                puts (ele.symbol).colorize(:color => :blue, :background => :yellow)
              end
            else
              if ele.color == :white
                print (ele.symbol).colorize(:color => :red, :background => :yellow)
              else
                print (ele.symbol).colorize(:color => :blue, :background => :yellow)
              end
            end
        else
          if ele.color == :white
            print (ele.symbol).colorize(:color => :red, :background => :black)
          else
            print (ele.symbol).colorize(:color => :blue, :background => :black)
          end
        end
    end
  end

end

test = Display.new(Board.new)
test.render