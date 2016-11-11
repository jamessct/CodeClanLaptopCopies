require('minitest/autorun')
require('minitest/rg')
require_relative('../models/sales')
require_relative('../models/pizza')

class TestSales < Minitest::Test
  def setup
  pizza1 = Pizza.new({
    'first_name' => 'Val',
    'last_name' => 'Gibson',
    'toppin' => 'Calzone',
    'quantity' => 4
    })
  pizza2 = Pizza.new({
    'first_name' => 'Jay',
    'last_name' => 'Chetty',
    'toppin' => 'Meat',
    'quantity' => 2
    })
  @sales = Sales.new( [pizza1, pizza2 ] )
  end

  def test_total_revenue
    result = @sales.total_revenue()
    assert_equal(60, result)
  end
end

