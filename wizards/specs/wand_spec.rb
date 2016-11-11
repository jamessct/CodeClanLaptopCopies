require('minitest/autorun')
require('minitest/rg')
require_relative('../wand')

class TestWand < MiniTest::Test

  def setup()
    @broken_wand = Wand.new("oak", "unicorn hair")
    @elder_wand = Wand.new("holly", "phoenix feather")
  end

  def test_wand_has_wood()
    assert_equal("oak", @broken_wand.wood)
  end

  def test_wand_has_core()
    assert_equal("unicorn hair", @broken_wand.core())
  end

  def test_wand_can_cast()
    assert_equal("adava kedavra", @broken_wand.cast("adava kedavra"))
  end

  def test_wand_can_cast_strong()
    assert_equal("CRUCIATUS", @elder_wand.cast("cruciatus"))
  end
end