require_relative 'player'
require_relative 'board'
require_relative 'ship'
require_relative 'squares'

class Game
	
# 	def initialize
# 		@players = []
# 		play_game
# 	end

# 	attr_reader :players

# 	def play_game
# 		create_game_elements
# 		# set_up_game
# 		# play_battleships
# 	end


# 	def create_game_elements
# 		create_players
# 		create_board
# 		create_ships
# 	end

# 	def create_players
# 		for i in 1..2
# 			name = get_name_of_player(i)
# 			@players << Player.new(name)
# 		end
# 	end

# 	def create_board
# 		players.each do |player|
# 			player.board=Board.new
# 		end
# 	end

 	
#  	def create_ships
#  		players.each do |player|
#  			player.ships=create_fleet
#  		end
# 	end
	
# def create_fleet
# 	[Ship.raft,Ship.canoe,Ship.shortboat,Ship.longboat]
# end

# def place_ships
# 	ships.each do |ship| 
# 		coordinates, direction = ask_for_input
# 		board.place(ship,coordinates,direction)
# 	end
# end

end

