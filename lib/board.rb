
class Square
end

class Water
end

class Board

	attr_reader :grid, :x, :y

	def initialize
		@grid = Array.new(10) { Array.new(10) { Square.new } }
		@x = 0
		@y = 0
	end

	def place (row,column,direction,ship)
		if placement_is_valid?(row,column,direction,ship)
			assign_ship_markers(row,column,direction,ship)
		end
	end

	def assign_ship_markers(row,column,direction,ship)
		@x,@y = row, column
		ship.length.times do
			@grid[x][y].add_marker_for(ship)
			increment(direction)
		end
	end

	def placement_is_valid?(row,column,direction,ship)
		@x,@y = row, column
		ship.length.times do
			return false if x > 9 || y > 9
			return false if !@grid[x][y].contents.is_a?(Water)
			increment(direction)
		end
		true
	end

	def increment direction
		case direction
		when :horizontal
			@y += 1
		when :vertical
			@x += 1
		end
	end

	# def place_horizontal(row, column, ship)
	# 	return if (column + ship.length) > 10
	# 	current_column = column
	# 	while current_column < column + ship.length
	# 		@grid[row][current_column].add_marker_for(ship)
	# 		current_column += 1
	# 	end
	# end

	# def place_vertical(row, column, ship)
	# 	return if (row + ship.length) > 10
	# 	x = row
	# 	while x < row + ship.length
	# 		@grid[x][column].add_marker_for(ship)
	# 		x += 1
	# 	end
	# end
end

