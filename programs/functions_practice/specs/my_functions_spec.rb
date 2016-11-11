require("minitest/autorun")
require("minitest/rg")
require_relative("../my_functions")

class FunctionsTest < Minitest::Test

  def test_my_jam()
    song = my_jam()
    assert_equal("Uptown Funk", song)
  end

  def test_add()
    result = add(2,4)
    assert_equal(6, result)
  end

  def test_subtract()
    result = subtract(16, 8)
    assert_equal(8, result)
  end

  def test_sperical_volume()
    result = spherical_volume((4/3*3.14)*35**3)
    assert_equal(?
  end
end
