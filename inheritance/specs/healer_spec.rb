require('minitest/autorun')
require('minitest/rg')
require_relative('../healer')

class HealerTest < Minitest::Test
  def setup
    @healer = Healer.new("Dr", "No")
  end

  def test_healer_can_heal
    @healer.heal()
    require_relative(110, @healer.health)
  end
end