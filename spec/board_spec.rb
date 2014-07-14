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

	it 'can place the first sqaure of a ship' do
		# square = double :square, ship_status: :ship
		expect(board.grid[0][0]).to receive(:change_ship_status).with(:ship_name)
		board.place(0,0,:ship_name)
	end

	xit 'places the second square of a horizontal ship' do
		board
	end


end