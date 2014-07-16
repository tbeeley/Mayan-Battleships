require_relative 'board'
require_relative 'ship'

class Player

	def initialize(name: "")
		@name = name
		@board = Board.new
		@ships = [Ship.raft,Ship.canoe,Ship.shortboat,Ship.longboat]
	end

	attr_reader :name, :board, :ships

	def place_ships
		ships.each do |ship| 
			coordinates, direction = ask_for_input
			board.place(ship,coordinates,direction)
		end
	end

	# We need to define an ask for input method

end



