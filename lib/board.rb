
class Board
  def initialize(player)
    @player = player
    @array = Array.new(10) {Array.new(10, "")}
  end
  
  def owner
    @player.name
  end
  
 
  # This method should register the shot at the coordinates passed
  # hitting a ship or
  # just hitting the water.
  def register_shot(at_coordinates)
    @array[at_coordinates[0]][at_coordinates[1]] = "o" if @array[at_coordinates[0]][at_coordinates[1]] == ""
  end
  
  # This method returns an array containing 10 arrays with 10 
  # elements each where:
  # - an empty string ('') denotes an empty space in the grid
  # - an 'o' denotes a shot in the water
  # - an 'x' denotes a hit on a ship
  # - an 's' denotes a ship
  # you can change the representations as you please, but make sure
  # that you have
  # four different types
  def rows
    @array
  end

  def add_ships
    ships = [2,2,2,2,3,3,3,4,4,6]
    ships.each do |size|
      i = 0
      rotation = rand(0..1)
      fixed = rand(0..9)
      if rotation == 0 #horizontal
        while i < size
          @array[i][fixed-size] = "s"
          i += 1
        end
      end
      if rotation == 1 #vertical
        while i < size
          @array[fixed-size][i] = "s"
          i += 1
        end
      end
    end
  end
  
#   # This method returns an array containing 10 arrays with 10
#   # elements each (as in rows) replacing the ships with an empty
#   # string ('') so that your opponent cannot see your ships.
#   def opponent_view
#   end
end

