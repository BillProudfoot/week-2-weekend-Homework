class Bar

  attr_reader :guest, :room
  # :name, :position, :colour, :players

    def initialize(guests, rooms) #name, position, colour, players
      @guests = guests
      @die = die
    end

  def whos_turn_is_it()
    @guest.rotate!
    return @guest.first()
    # puts @players.first()
  end

  def current_guest()
    return @guests.first
  end

 

end