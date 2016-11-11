require ('minitest/autorun')
require ('minitest/rg')
require_relative('../task_2')

class TestTask1 < Minitest::Test
  
  def test_func1
    result = func1(1)
    assert_equal(true, result)
  end

  def test_max
    result = max(7, 3)
    assert_equal(7, result)
  end

  def test_looper
    result = looper
    assert_equal(1..10, result)
  end

end