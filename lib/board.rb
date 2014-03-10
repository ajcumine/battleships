COLUMNS ={

"A" => 1,
"B" => 2,
"C" => 3,
"D" => 4,
"E" => 5,
"F" => 6,
"G" => 7,
"H" => 8,
"I" => 9,
"J" => 10
}


class Board
  def initialize(player)
    @player = player

  end
  
  def owner
    @player.name
  end
  
 
  # This method should register the shot at the coordinates passed
  # hitting a ship or
  # just hitting the water.
  def register_shot(at_coordinates)
    y = []
    arr = at_coordinates.split(//)
    x = arr[1].to_i
    COLUMNS.each {|k,v| y = v if arr[0].include?(k)}
    final = [y, x]
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
    @array = Array.new(10, Array.new(10, ""))
  end
  
#   # This method returns an array containing 10 arrays with 10
#   # elements each (as in rows) replacing the ships with an empty
#   # string ('') so that your opponent cannot see your ships.
#   def opponent_view
#   end
end

