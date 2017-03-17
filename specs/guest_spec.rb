require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')


class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Bill", 1) #, 1, "New York, New York"]
  @guest2 = Guest.new("Frank", 1) #, 1, "My Way"]
  @guest3 = Guest.new("Dean", 2) #, 2, "Wine Drinker Me"]
  @guest4 = Guest.new("Tom", 2) #, 2, "My Green Green Grass"]

end

  def test_whos_turn_to_sing
    name = @room.whos_turn_is_it()
    assert_equal(name, @guest1.whos_turn_to_sing())

  end

end