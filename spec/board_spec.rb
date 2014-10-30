require 'board'

describe Board do

	let (:board) { Board.new}

	it 'has an array of squares' do
		expect(board.grid).not_to be_empty
	end

	it 'has a grid with ten rows' do
		expect(board.grid.length).to eq 10
	end

	it 'has a grid with ten columns' do
		board.grid.each do |row|
			expect(row.length).to eq 10
		end
	end

	it 'is initialized with a grid of 10 x 10 Squares' do
		expect(board.grid.flatten.all?{|square| square.is_a?(Square)}).to be true
	end

	it 'can place the squares of a ship horizontally' do
		ship = double :ship, length: 3
		coordinate = {x: 0, y:0}
		expect(board.grid[0][0]).to receive(:add_marker_for).with(ship)
		expect(board.grid[0][1]).to receive(:add_marker_for).with(ship)
		expect(board.grid[0][2]).to receive(:add_marker_for).with(ship)
		expect(board.grid[0][3]).not_to receive(:add_marker_for)
		board.place ship, at: coordinate, facing: :horizontal
	end

	it 'can place the squares of a ship vertically' do
		ship = double :ship, length: 3
		coordinate = {x: 0, y:0}
		expect(board.grid[0][0]).to receive(:add_marker_for).with(ship)
		expect(board.grid[1][0]).to receive(:add_marker_for).with(ship)
		expect(board.grid[2][0]).to receive(:add_marker_for).with(ship)
		expect(board.grid[3][0]).not_to receive(:add_marker_for)
		board.place ship, at: coordinate, facing: :vertical
	end

	it 'cannot place a ship outside the right edge of the grid' do
		ship = double :ship, length: 3, is_a?: true
		coordinate = {x: 0, y:9}
		allow(board.grid[0][9]).to receive(:contents).and_return(ship)
		expect(board.check_valid?(ship, at: coordinate, facing: :horizontal)).to be false
	end

	it 'cannot place a ship outside the bottom edge of the grid' do
		ship = double :ship, length: 3, is_a?: true
		coordinate = {x: 9, y: 0}
		allow(board.grid[9][0]).to receive(:contents).and_return(ship)
		expect(board.check_valid?(ship, at: coordinate, facing: :vertical)).to be false
	end

end
