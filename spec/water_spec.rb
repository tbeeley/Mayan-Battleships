require 'water'

describe Water do
	it 'can be hit' do
		water = Water.new
		expect {water.add_hit}.not_to raise_error
	end
end