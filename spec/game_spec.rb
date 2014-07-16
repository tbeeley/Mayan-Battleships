require 'game'

describe Game do

	let (:game) {Game.new}
	
	it 'initializes with two players' do
		expect(game.players).to eq 2
	end


end