require 'player'

describe Player do
		
		let(:player) { Player.new(name: "Charlotte")}

	it 'has a name' do
		expect(player.name).to eq "Charlotte"
	end

	it 'has a fleet' do
		expect(player.fleet).to be_instance_of(Fleet)
	end

	it 'has a board' do
		expect(player.board).to be_instance_of(Board)
	end


end

