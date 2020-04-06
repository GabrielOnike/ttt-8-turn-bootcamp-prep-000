
def display_board(board)
  puts "\n"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  puts converted_input = "#{user_input}".to_i
   converted_input - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
    puts "\nPlease enter 1-9:"
    input = gets.strip
    index = input_to_index(index)
    if valid_move?(board,index)
      move(board, index, char="X")
      display_board(board)
    else
      turn(board)
end
end

def position_taken?(board,index)
  if board[index] == " "||board[index] == ""||board[index] == nil
    false
  else
    true
  end
end

def move(board, input_to_index,char="X")
   board[input_to_index] = char
end
