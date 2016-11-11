require('minitest/autorun')
require('minitest/rg')
require_relative ('../wizard')
require_relative('../wand')

class WizardTest < MiniTest::Test

  def setup ()
    @broken_wand = Wand.new("oak", "unicorn hair")
    @elder_wand = Wand.new("holly", "phoenix feather")
    @ron = Wizard.new("Ron Weasley", @broken_wand)
    @harry = Wizard.new("Harry Potter", @elder_wand)
  end

  def test_wizard_has_name()
    assert_equal("Ron Weasley", @ron.name)
  end

  def test_wizard_can_cast_spells()
    assert_equal("expeliamus", @ron.cast_spell("expeliamus"))
  end

  def test_wizard_can_cast_strong_spell()
    assert_equal("STUPOR", @harry.cast_spell("stupor"))
  end
end