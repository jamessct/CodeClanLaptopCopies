
def start_game()
  puts "Welcome to interactive noughts and crosses :) X will go first, choose one of the following squares:"
  puts "TL TM TR"
  puts "ML MM MR"
  puts "BL BM BR"
end

def check_winner(board)
  if board["TL"] + board["TM"] + board["TR"] == "XXX" || 
    board["TL"] + board["TM"] + board["TR"] == "OOO" ||
    board["ML"] + board["MM"] + board["MR"] == "XXX" ||
    board["ML"] + board["MM"] + board["MR"] == "OOO" ||
    board["BL"] + board["BM"] + board["BR"] == "XXX" ||
    board["BL"] + board["BM"] + board["BR"] == "OOO" ||
    board["TL"] + board["ML"] + board["BL"] == "XXX" ||
    board["TL"] + board["TM"] + board["TR"] == "OOO" ||
    board["TM"] + board["MM"] + board["BM"] == "XXX" ||
    board["TM"] + board["MM"] + board["BM"] == "OOO" ||
    board["TR"] + board["MR"] + board["BR"] == "XXX" ||
    board["TR"] + board["MR"] + board["BR"] == "OOO" ||
    board["TL"] + board["MM"] + board["BR"] == "XXX" ||
    board["TL"] + board["MM"] + board["BR"] == "OOO" ||
    board["TR"] + board["MM"] + board["BL"] == "XXX" ||
    board["TR"] + board["MM"] + board["BL"] == "OOO"
    return true
    puts "Congrats, you win! :D"
  end
end

def check_draw(board)
  for square in board
    return false if square == "n"
  end
end

def get_input
  return gets.chomp
end

def make_move(input, board, player)
  board[input] = player # if board[input] == "n"
  return board
end

def whose_move(turns)
  if turns.even?
    return "X"
  else
    return "O"
  end
end

board = {
  "TL" => "n",
  "TM" => "n",
  "TR" => "n",
  "ML" => "n",
  "MM" => "n",
  "MR" => "n",
  "BL" => "n",
  "BM" => "n",
  "BR" => "n"
}

turns = 0 

start_game
while true do
  player = whose_move(turns)
  input = get_input
  board = make_move(input, board, player)
  puts "board: #{board}"
  break if check_winner(board) == true
  break if check_draw(board) == true
  turns += 1
end








 