require_relative 'board'

class Fleet

end

class Player

	def initialize(name: "")
		@name = name
		@fleet = Fleet.new
		@board = Board.new
	end

	attr_reader :name, :fleet, :board
end