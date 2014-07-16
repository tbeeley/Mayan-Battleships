require 'player'

describe Player do
		
	let(:player) { Player.new(name: "Charlotte")}

	it 'has a name' do
		expect(player.name).to eq "Charlotte"
	end

	specify 'when it is created have 1 raft' do
		ships = player.ships.select do |ship|
			ship.length == 2
		end

		expect(ships.count).to eq 1
	end

	specify 'when it is created have 1 canoe' do
		ships = player.ships.select do |ship|
			ship.length == 3
		end
		expect(ships.count).to eq 1
	end

	specify 'when it is created have 1 shortboat' do
		ships = player.ships.select do |ship|
			ship.length == 4
		end

		expect(ships.count).to eq 1
	end

	specify 'when it is created have 1 longboat' do
		ships = player.ships.select do |ship|
			ship.length == 6
		end

		expect(ships.count).to eq 1
	end

	it 'contains only ships' do
		not_ships = player.ships.reject do |ship|
			ship.is_a?(Ship)
		end
		expect(not_ships).to eq []
	end

	it 'has no ships of invalid length' do
		player.ships.each do |ship|
			expect(ship.length).to be <= 6
			expect(ship.length).to be >= 2
		end
	end

	it 'has a board' do
		expect(player.board).to be_instance_of(Board)
	end

	it 'will place every ship in the fleet' do
		allow(player).to receive(:ask_for_input).and_return([0,0])
		player.ships.each do |ship|
			expect(player.board).to receive(:place).with(ship,0,0)
		end
		player.place_ships

	end

end

