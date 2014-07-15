require 'ship'

describe Ship do

	let(:ship) { Ship.new }

	it 'has a length' do
		expect(ship.length).to eq Ship::DEFAULT_LENGTH
	end

	it 'can be created with a length of 5' do
		ship = Ship.new(length: 5)
		expect(ship.length).to eq 5
	end

	it "knows how many times it's been hit" do
		expect(ship.hit_count).to eq 0
	end

	it 'can be hit' do
		ship.add_hit
		expect(ship.hit_count).to eq 1
	end

	it 'can be sunk' do
		expect(ship.sunk?).to be false
		3.times {ship.add_hit}
		expect(ship.sunk?).to be true
	end

	it 'can be a canoe' do
		canoe = Ship.canoe
		expect(canoe.length).to eq 3
	end

	it 'can be a raft' do
		raft = Ship.raft
		expect(raft.length).to eq 2
	end

	it 'can be a longboat' do
		longboat = Ship.longboat
		expect(longboat.length).to eq 6
	end

	it 'can be a shortboat' do
		shortboat = Ship.shortboat
		expect(shortboat.length).to eq 4
	end

end