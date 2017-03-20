require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')


class RoomTest < MiniTest::Test

def setup

  @guest1 = Guest.new("Bill", 1) #, 1, "New York, New York"]
  @guest2 = Guest.new("Frank", 1) #, 1, "My Way"]
  @guest3 = Guest.new("Dean", 2) #, 2, "Wine Drinker Me"]
  @guest4 = Guest.new("Tom", 2) #, 2, "My Green Green Grass"]
  @room1 = Room.new(@guest1) 
  @songs = [@song1, @song2, @song3, @song4]
  @song1 = Song.new("New York, New York")
  @song2 = Song.new("My Way")
  @song3 = Song.new("Wine Drinker Me")
  @song4 = Song.new("My Green Green Grass")
  @song5 = Song.new("Happy Birthday")

  # @room2 = Room.new([@guest3, @guest4])
end

def test_number_of_guests_in_room
  assert_equal(0, @room1.guest_count())
end

def test_add_guest_to_room()
  @room1.add_guest_to_room(@guest1)
  assert_equal(1, @room1.guest_count())
end

# add second guest to room
def test_add_another_guest_to_room()
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  assert_equal(2, @room1.guests.length())
end



def test_remove_guest_from_room()
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  @room1.remove_guest_from_room()
  assert_equal(1, @room1.guests.length())
end

def test_add_songs_to_room
  @room1.add_song(@song1)
  @room1.add_song(@song2)
  @room1.add_song(@song3)
  @room1.add_song(@song4)
  @room1.add_song(@song5)
  assert_equal(5, @room1.song_count())
end

# def test_whos_turn_to_sing
#   name = @room.whos_turn_is_it()
#   assert_equal(name, @guest1.whos_turn_to_sing())

# end



end



