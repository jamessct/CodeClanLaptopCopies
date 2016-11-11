require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < Minitest::Test
  def setup
    @person = Person.new("James", "Scott")
  end

  def test_person_can_talk
    assert_equal("James Scott", @person.talk)
  end
end