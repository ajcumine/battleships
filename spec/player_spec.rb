require 'player'

describe Player do
	
	it "should be able to add a player" do
		player = Player.new("joe")
		expect(player.player_name).to eq("joe")
	end	


end