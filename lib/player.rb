class Player

  def initialize(name)
    @name = name
  end

  def player_name
    @name
  end 

  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
  end
  
  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
  end

 end 