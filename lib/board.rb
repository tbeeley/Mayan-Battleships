
require_relative 'squares'
require_relative 'water'

class Board

	attr_reader :grid

	def initialize
		@grid = Array.new(10) { Array.new(10) { Square.new } }
	end

	def place ship, at: coordinate, facing: direction
		ship.length.times do
			@grid[at[:x]][at[:y]].add_marker_for(ship)
			facing == :horizontal ? at[:y] += 1 : at[:x] += 1
		end
	end

	def check_valid?(ship, at: coordinate, facing: direction)
		ship.length.times do
			if at[:x] > 9 || at[:y] > 9 || !@grid[at[:x]][at[:y]].contents.is_a?(Water)
				puts "You can't put it there, try again"
				return false
			else
				facing == :horizontal ? at[:y] += 1 : at[:x] += 1
			end
		end
		true
	end
end
