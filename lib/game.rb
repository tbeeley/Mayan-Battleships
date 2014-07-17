require_relative 'player'
require_relative 'board'
require_relative 'ship'
require_relative 'squares'
require_relative 'user_input'
require_relative 'water'

class Game
	
	def initialize
		@players = []
		@interface = UserInput.new
		play_game
	end

	attr_reader :players, :interface

	def play_game
		create_game_elements
		set_up_game
		# play_battleships
	end

	def create_game_elements
		create_players
		create_board
		create_ships
	end

	def set_up_game
		place_ships(players[0])
		place_ships(players[1])
		puts "Lets play Battleships!"
	end

	def create_players
		2.times do
			name = interface.get_name_of_player
			@players << Player.new(name: name)
		end
	end

	def create_board
		players.each do |player|
			player.board=Board.new
		end
	end

 	
 	def create_ships
 		players.each do |player|
 			player.ships = create_fleet
 		end
	end
	
	def create_fleet
		[Ship.raft, Ship.canoe, Ship.shortboat, Ship.longboat]
	end

	def place_ships(player)
		puts "Please place your ships, #{player.name}:"
		player.ships.each do |ship| 
			begin
				row = interface.get_number("row", ship)
				column = interface.get_number("column", ship)
				direction = interface.get_direction(ship)
				coordinate = {x: row.to_i, y: column.to_i}
			end while !player.board.check_valid?(ship, at: coordinate, facing: direction.to_sym)
			coordinate = {x: row.to_i, y: column.to_i}
			player.board.place(ship, at: coordinate, facing: direction.to_sym)
		end
	end

end

