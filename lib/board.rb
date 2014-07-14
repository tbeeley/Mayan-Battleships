class Square
end


class Board

	def initialize
		@grid = Array.new(10) { Array.new(10) { Square.new} }
	end

	def grid
		@grid
	end

	def place(row, column, ship)
		@grid[row][column].change_ship_status(ship)
	end
end

# grid[1][5] = Square.new
# grid[:row => 'A', :column => 1, :square => instance_of_square]

