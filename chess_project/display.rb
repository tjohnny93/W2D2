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
      end
    end
  end

  def move_cursor
    i = 0

    while i < 11
      render
      # debugger
      @cursor.get_input
      i += 1
    end
  end

  private
  def color_bg(row_i, col_j, ele)
      if row_i.even? 
            if col_j.even?
              if ele.color == :white
                if @cursor.pos == [row_i, col_j]
                  print (ele.symbol).colorize(:color => :red, :background => :green)
                else
                  print (ele.symbol).colorize(:color => :red, :background => :yellow)
                end
              else
                if @cursor.pos == [row_i, col_j]
                  print (ele.symbol).colorize(:color => :blue, :background => :green)
                else
                  print (ele.symbol).colorize(:color => :blue, :background => :yellow)
                end
              end
            else
              if col_j == 7
                if ele.color == :white
                  if @cursor.pos == [row_i, col_j]
                    puts (ele.symbol).colorize(:color => :red, :background => :green)
                  else
                    puts (ele.symbol).colorize(:color => :red, :background => :black)
                  end
                else
                  if @cursor.pos == [row_i, col_j]
                    puts (ele.symbol).colorize(:color => :blue, :background => :green)
                  else
                    puts (ele.symbol).colorize(:color => :blue, :background => :black)
                  end
                end
              else
                if ele.color == :white
                  if @cursor.pos == [row_i, col_j]
                    print (ele.symbol).colorize(:color => :red, :background => :green)
                  else
                    print (ele.symbol).colorize(:color => :red, :background => :black)
                  end
                else
                  if @cursor.pos == [row_i, col_j]
                    print (ele.symbol).colorize(:color => :blue, :background => :green)
                  else
                    print (ele.symbol).colorize(:color => :blue, :background => :black)
                  end
                end
              end
            end
      else
          if col_j.odd?
              if col_j == 7
                if ele.color == :white
                  if @cursor.pos == [row_i, col_j]
                    puts (ele.symbol).colorize(:color => :red, :background => :green)
                  else
                    puts (ele.symbol).colorize(:color => :red, :background => :yellow)
                  end
                else
                  if @cursor.pos == [row_i, col_j]
                    puts (ele.symbol).colorize(:color => :blue, :background => :green)
                  else
                    puts (ele.symbol).colorize(:color => :blue, :background => :yellow)
                  end
                end
              else
                if ele.color == :white
                  if @cursor.pos == [row_i, col_j]
                    print (ele.symbol).colorize(:color => :red, :background => :green)
                  else
                    print (ele.symbol).colorize(:color => :red, :background => :yellow)
                  end
                else
                  if @cursor.pos == [row_i, col_j]
                    print (ele.symbol).colorize(:color => :blue, :background => :green)
                  else
                    print (ele.symbol).colorize(:color => :blue, :background => :yellow)
                  end
                end
              end
          else
            if ele.color == :white
              if @cursor.pos == [row_i, col_j]
                print (ele.symbol).colorize(:color => :red, :background => :green)
              else
                print (ele.symbol).colorize(:color => :red, :background => :black)
              end
            else
              if @cursor.pos == [row_i, col_j]
                print (ele.symbol).colorize(:color => :blue, :background => :green)
              else
                print (ele.symbol).colorize(:color => :blue, :background => :black)
              end
            end
          end
      end
  end

end
