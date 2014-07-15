class Square
end


class Board

	def initialize
		@grid = Array.new(10) { Array.new(10) { Square.new } }
	end

	def grid
		@grid
	end

	def place_horizontal(row, column, ship)
		i = column
		while i < column + ship.length
			@grid[row][i].add_marker_for(ship)
			i += 1
		end
	end

	def place_vertical(row, column, ship)
		i = row
		while i < row + ship.length
			@grid[i][column].add_marker_for(ship)
			i += 1
		end
	end
end

