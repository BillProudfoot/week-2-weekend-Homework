require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class BarTest < MiniTest::Test

def setup

  @room1 = Room.new([@guest1, @guest2]) 
  @room2 = Room.new([@guest3, @guest4])
  @guest1 = Guest.new("Bill", 1) #, 1, "New York, New York"]
  @guest2 = Guest.new("Frank", 1) #, 1, "My Way"]
  @guest3 = Guest.new("Dean", 2) #, 2, "Wine Drinker Me"]
  @guest4 = Guest.new("Tom", 2) #, 2, "My Green Green Grass"]

  
end

  def test_whos_turn_is_it
    
    guest_turn = @bar.whos_turn_is_it()

    assert_equal("Frank", guest_turn.name)

    assert_equal(@guest2, guest_turn)

  end

  # def test2_whos_turn_is_it
  #   player_turn = @game.whos_turn_is_it()

  #   assert_equal("Ian", player_turn.name)
  # end



end