
def start_game()
  puts "Welcome to interactive noughts and crosses :) X will go first, choose one of the following squares:"
  puts "TL TM TR"
  puts "ML MM MR"
  puts "BL BM BR"
end

board = {"TL" => nil, "TM" => nil, "TR" =>nil, "ML" =>nil, "MM" =>, "MR" => nil, "BL" => nil, "BM" => nil, "BR" => nil}

if board["TL"] + board["TM"] + board["TR"] == "XXX"
  then winner

counter = 0

while true do
  input = gets.chomp
  put input on board
  check for winner
  break if winner = true
end

"TL" = "X"

board[input] = "X"

while true do
  get input (input = gets.chomp)
  put input on board
  check for winner
  break if winner = true
  break if draw = true
end

board[input] = "O"

if no winner
  repeat loop
else
  break
  "congrats m8 u win"

if board[input] != nil
  board[input] = X or O
else
  puts "Square taken, try again"
end