class Guest

attr_reader :name, :room, :song
# :room, 
# attr_accessor song

  def initialize(name, room) # room, song) 
    

    @name = name
    @room = room
   
    # @song = song
    

  end

  def whos_turn_to_sing()
    @room.name.rotate!
    return @room.name.first()
  end

end