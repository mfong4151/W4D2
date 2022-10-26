require_relative 'requirements'

class Board
include Slideable
include Stepable

  def self.generate_pieces(board)
    black =
    
    defaults = [0,1,6,7]
    pieces = [:R,:N, :B, :Q, :K,:B, :N, :R]
    pawns = [:P]*8


    defaults.each do |row|
      if row == 6 || row == 1
        board[row]= pawns
      else
        board[row] = pieces 
      end
    end

    (0...@board.length).each do |i|
      (0...@board.length).each do |j| 

      end
    end




    board
  end


  attr_reader :board
  def initialize()
    @board = Array.new(8){Array.new(8, '_')}
    @board = Board.generate_pieces(@board)

  end

  def move_piece(start_pos, end_pos)
    x_start, y_start = start_pos
    x_end, y_end = end_pos

    if self[start_pos] == '_'
      raise "There's no piece to move at this position"

    # elsif x_end.between?(0, 7) && y_end.between?(0, 7) 
    #   && x_start.between?(0, 7) && y_end.between(0, 7)
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = '_'

    end

  end

  def render
    @board.each do |row|
      print row
    end
  end

  def [](pos)
    @board[pos[0]][pos[1]]

  end

  def[]=(pos, val)
    @board[pos[0]][pos[1]] = val

  end
end