require('minitest/autorun')
require('minitest/rg')
require_relative('../models/pizza')

class TestPizza < MiniTest::Test

  def setup()
    @pizza = Pizza.new({"first_name" => "BIG", "last_name" => "G", "topping" => "MEAT", "quantity" => 2})
  end

  def test_first_name()
    assert_equal('BIG', @pizza.first_name)
  end

  def test_last_name()
    assert_equal('G', @pizza.last_name)
  end

  def test_pretty_name
    assert_equal("BIG G", @pizza.pretty_name)
  end

  def test_has_topping()
    assert_equal("MEAT", @pizza.topping)
  end

  def test_has_quantity()
    assert_equal(2, @pizza.quantity)
  end

  def test_total()
    assert_equal(20, @pizza.total)
  end
end

