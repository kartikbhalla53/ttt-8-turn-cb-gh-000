def valid_move?(board, index)
  if index >= 0 && index < 10 && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
    if board[index] == "X"
      return true
    elsif board[index] == "O"
      return true
    elsif board[index] == " " || board[index] == "" || board[index] == nil
      return false
    end
  end

    def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def move(array, index, value = "X")
      array[index] = value
    end

    def input_to_index(user_input)
      return user_input.to_i - 1
    end
