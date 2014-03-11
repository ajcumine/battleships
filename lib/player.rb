class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @board = Board.new(self)
  end

  def player_name
    @name
  end 

  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
    @board.ship_count != 0
  end
  
  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
    opponent_board.register_shot(at_coordinates)
  end

 end 