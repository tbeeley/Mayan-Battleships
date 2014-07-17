require 'game'

describe Game do

	let (:game) {Game.new}
	
	# it 'initializes with two players' do
	# 	expect(game.players.count).to eq 2
	# end

	# it 'has only players' do
	# 	game.players.each do |player|
	# 		player.is_a?(Player)
	# 	end
	# end

# 	it 'initializes a fleet for each player' do

# 	end

# 	specify 'when it is created have 1 raft' do
# 		ships = player.ships.select do |ship|
# 			ship.length == 2
# 		end

# 		expect(ships.count).to eq 1
# 	end

# 	specify 'when it is created have 1 canoe' do
# 		ships = player.ships.select do |ship|
# 			ship.length == 3
# 		end
# 		expect(ships.count).to eq 1
# 	end

# 	specify 'when it is created have 1 shortboat' do
# 		ships = player.ships.select do |ship|
# 			ship.length == 4
# 		end

# 		expect(ships.count).to eq 1
# 	end

# 	specify 'when it is created have 1 longboat' do
# 		ships = player.ships.select do |ship|
# 			ship.length == 6
# 		end

# 		expect(ships.count).to eq 1
# 	end

# 	it 'contains only ships' do
# 		not_ships = player.ships.reject do |ship|
# 			ship.is_a?(Ship)
# 		end
# 		expect(not_ships).to eq []
# 	end

# 	it 'has no ships of invalid length' do
# 		player.ships.each do |ship|
# 			expect(ship.length).to be <= 6
# 			expect(ship.length).to be >= 2
# 		end
# 	end

# 	it 'has a board' do
# 		expect(player.board).to be_instance_of(Board)
# 	end

# xit 'will place every ship in the fleet' do
# 		allow(player).to receive(:ask_for_input).and_return([0,0])
# 		player.ships.each do |ship|
# 			expect(player.board).to receive(:place).with(ship,0,0)
# 		end
# 		player.place_ships

# 	end
	
end