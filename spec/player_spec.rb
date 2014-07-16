require 'player'

describe Player do

	it 'has a name' do
		player = Player.new(name: "Charlotte")
		expect(player.name).to eq "Charlotte"
	end

end

