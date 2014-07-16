class Game
	
	def initialize
		@players = [Player.new, Player.new]
	end

	attr_reader :players

end