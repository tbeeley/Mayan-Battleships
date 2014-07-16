
require_relative 'squares'

class Board

	attr_reader :grid

	def initialize
		@grid = Array.new(10) { Array.new(10) { Square.new } }
	end

	def place ship, at: coordinate, facing: direction
		if check_valid?(ship, at[:x], at[:y], facing)
			ship.length.times do
				@grid[at[:x]][at[:y]].add_marker_for(ship)
				facing == :horizontal ? at[:y] += 1 : at[:x] += 1
			end
		end
	end

	def check_valid?(ship, x, y, direction)
		ship.length.times do
			return false if x > 9 || y > 9
			return false if !@grid[x][y].contents.is_a?(Water)
			direction == :horizontal ? y += 1 : x += 1
		end
		true
	end
end



	# def placex(ship, at: coordinate, facing: direction)
	# 	if placement_is_valid?(at[:x],at[:y],facing,ship)
	# 		assign_ship_markers(at[:x],at[:y],facing,ship)
	# 	end
	# end

	# def assign_ship_markers(row,column,direction,ship)
	# 	@x,@y = row, column
	# 	ship.length.times do
	# 		@grid[x][y].add_marker_for(ship)
	# 		increment(direction)
	# 	end
	# end

	# def placement_is_valid?(row,column,direction,ship)
	# 	@x,@y = row, column
	# 	ship.length.times do
	# 		return false if x > 9 || y > 9
	# 		return false if !@grid[x][y].contents.is_a?(Water)
	# 		increment(direction)
	# 	end
	# 	true
	# end

	# def increment direction
	# 	case direction
	# 	when :horizontal
	# 		@y += 1
	# 	when :vertical
	# 		@x += 1
	# 	end
	# end
