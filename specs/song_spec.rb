require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')


class SongTest < MiniTest::Test

def setup

  @songs = [@song1, @song2, @song3, @song4]
  @song1 = Song.new("New York, New York")
  @song2 = Song.new("My Way")
  @song3 = Song.new("Wine Drinker Me")
  @song4 = Song.new("My Green Green Grass")
  @song5 = Song.new("Happy Birthday")

end




