require_relative 'board'
require_relative 'ship'

class Player

	def initialize(name: "")
		@name = name
	end

	attr_accessor :name, :board, :ships

	def has_lost?
			ships.all? {|ship| ship.sunk?}
	end

end



