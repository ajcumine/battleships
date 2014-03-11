require 'board'

describe Board do

	let (:board) do
		player = double :player, {:name =>"ross"}
		Board.new(player)
	end

	it "should initialize an array of 10x10" do
		expect(board.rows.length).to eq(10)
		expect(board.rows.all? {|row| row.length == 10}).to be_true
	end	

	it "should know the player's name" do
		expect(board.owner).to eq("ross")
	end	

	it "should show water hit" do
		x, y = [1,6]
		expect(board.rows[x][y]).to eq("")
		board.register_shot([x,y])
		expect(board.rows[x][y]).to eq("o")
	end	

	it 'should have four one cell ships on the board' do
		expect(board.rows.flatten.count("s")).to eq(4)
	end


	# it "should have ships size 2" do
	# 	board.add_ships	
	# 	expect(board.rows.flatten.count("s")).to eq(2)
	# end

	it "should not overlap ships" do
		board.add_ships
		expect(board.ship_count).to eq(31)
	end

end	