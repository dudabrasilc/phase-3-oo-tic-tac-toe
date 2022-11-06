
class TicTacToe

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [2,4,6],
    [0,3,6],
    [1,4,7],
    [2,5,8]
  ]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    random_board = @board.shuffle
    puts random_board
  end

  def input_to_index(input)
    @index = input.to_i - 1
    @index
  end

  def turn_count
    turns = @board.filter do |token|
      token != " "
    end
    turns.count
  end

  def move(index, token = "X")
    new_board = @board.map do |position|
      if index == @board[index]
        @board[index] == token
      else
        " "
      end
    end
    new_board
  end

  def position_taken
    
  end

end

game = TicTacToe.new

