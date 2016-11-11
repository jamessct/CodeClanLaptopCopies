require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../block_app')

class TestBlockApp < Minitest::Test

  def test_up_to_you
    assert_equal(2, up_to_you {1 + 1})
  end

  def test_up_to_you_greet_by_name
    assert_equal("Hello Jimmy, you are 24 years old", up_to_you { |options| "Hello #{options[:name]}, you are #{options[:age]} years old"})
  end

  def test_add_one
    assert_equal([2, 3, 4], map([1, 2, 3]){ |number| number + 1})
  end

  def test_multiply_by_2
    assert_equal([2, 4, 6], map([1, 2, 3]){ |num| num * 2})
  end

  def test_map_add_one
    array = [1, 2, 3]
    result = array.map do |number| number += 1
      number * 2
    end
    assert_equal([4, 6, 8], result)
  end
end