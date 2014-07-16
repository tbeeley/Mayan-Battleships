require 'game'

describe Game do

	let (:game) {Game.new}
	
	it 'initializes with two players' do
		expect(game.players.count).to eq 2
	end

	it 'has only players' do
		game.players.each do |player|
			player.is_a?(Player)
		end
	end


end