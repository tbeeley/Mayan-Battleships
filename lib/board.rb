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
		return if (column + ship.length) > 10
		y = column
		while y < column + ship.length
			@grid[row][y].add_marker_for(ship)
			y += 1
		end
	end

	def place_vertical(row, column, ship)
		return if (row + ship.length) > 10
		x = row
		while x < row + ship.length
			@grid[x][column].add_marker_for(ship)
			x += 1
		end
	end
end

