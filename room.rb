# require('pry')

class Room

attr_reader :name, :room, :guests, :song
# # :room, :song
# # attr_accessor song

  def initialize(song) # room, song) 
    
    @guests = []
    @name = name
    @songs = []

#     @rooms = room
#     # 
  end

  def guest_count()
     return @guests.length()
   end

  def add_guest_to_room(guest)
    @guests << guest
  end 

  def add_another_guest_to_room(guest)
    @guests << guest
  end 

  def remove_guest_from_room()
   # binding.pry
    @guests.delete_at(0)
  return @guests.length()
  end

  def song_count()
    return @songs.length()
  end

  def add_song(song)
    @songs << song
   # binding.pry
  end 




#   end


  # def whos_turn_to_sing
  #   @room.name.rotate!
  #   return @room.name.first()
  # end
end