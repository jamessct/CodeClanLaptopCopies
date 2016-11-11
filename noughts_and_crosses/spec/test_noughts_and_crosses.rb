require "minitest/autorun" 
require "minitest/rg"
require_relative("../noughts_and_crosses")

class Noughts_and_crosses_test < MiniTest::Test

  def test_start_game()
  end

  def test_check_winner()
    x_wins_board = { 
      "TL" => "X",
      "TM" => "X",
      "TR" => "X"
    }
    assert_equal(true, check_winner(x_wins_board))
  end 

  def test_check_draw()     
    board_is_draw = {       
      "TL" => "O",       
      "TM" => "X",       
      "TR" => "O",       
      "ML" => "O",       
      "MM" => "X",       
      "MR" => "X",       
      "BL" => "X",       
      "BM" => "O",       
      "BR" => "X"     
    }     
    assert_equal(true, check_draw(board_is_draw))   
  end

  def test_player_turn
    turn = 7
    assert_equal("O", whose_move(turn))
  end


end