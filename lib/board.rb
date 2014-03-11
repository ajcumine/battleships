class Board
  def initialize(player)
    @rows = Array.new(10) {Array.new(10, "")}
    @player = player
    @ships = [2,2,2,2,3,3,3,4,4,6]
    place_ships
  end

  
  def owner
    @player.name
  end
  
 
  # This method should register the shot at the coordinates passed
  # hitting a ship or
  # just hitting the water.
  def register_shot(at_coordinates)
    @rows[at_coordinates[0]][at_coordinates[1]] = "o" if @rows[at_coordinates[0]][at_coordinates[1]] == ""
  end
  

  def rows
    @rows
  end


  def place_ships
    while ship_count < 4
      place_1_cell_ship
    end
  end


  def place_1_cell_ship
    begin
      x, y = rand(10), rand(10)
      is_empty = rows[x][y] == ""
      @rows[x][y] = 's' if is_empty
    end while !is_empty
  end


  def ship_count
    @rows.flatten.count {|cell| cell =='s'}
  end


  def add_ships
    
    @ships.each do |size|
      i = 0
      rotation = rand(0..1)
      fixed = rand(0..9)
      check_space(i, fixed, rotation, size)
      redo if check_space(i, fixed, rotation, size) == true
      if rotation == 0 #horizontal
        while i < size
          @rows[i][fixed-size] = "s"
          i += 1
        end
      end
      if rotation == 1 #vertical
        while i < size
          @rows[fixed-size][i] = "s"
          i += 1
        end
      end
    end
  end

  def check_space(i, fixed, rotation, size)
    space = []
    if rotation == 0 #horizontal
      while i < size
        space << false if @rows[i][fixed-size] == "s"
        i += 1
      end
    end
    if rotation == 1 #vertical
      while i < size
        space << false if @rows[fixed-size][i] == "s"
        i += 1
      end
    end
    space.include? false
  end
  
#   # This method returns an array containing 10 arrays with 10
#   # elements each (as in rows) replacing the ships with an empty
#   # string ('') so that your opponent cannot see your ships.

  # def opponent_view

  # end
end

