require 'game'

describe Game do

	let (:game) {Game.new}
	
	it 'initializes with two players' do
		expect(game.players).to eq 2
	end

	xit 'initializes with 10  ships' do
		expect(game.ships.count).to eq 10
	end

end