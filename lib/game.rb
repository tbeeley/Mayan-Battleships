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
		play_battleships
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

	def play_battleships
		turn = 0
		until players[0].has_lost? || players[1].has_lost?
			puts "Turn #{turn}"
			row, column = get_target(players[0])
			target = players[1]
			loose_arrows(target, row, column)

			row, column = get_target(players[1])
			target = players[0]
			loose_arrows(target, row, column)
			turn += 1
		end
		puts "Game over"
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
				row, column, direction = interface.get_all_input(ship)
				coordinate = {x: row.to_i, y: column.to_i}
			end while !player.board.check_valid?(ship, at: coordinate, facing: direction.to_sym)
			
			coordinate = {x: row.to_i, y: column.to_i}
			player.board.place(ship, at: coordinate, facing: direction.to_sym)
		end
	end

	def get_target(player)
		puts "It's your turn, #{player.name}"
		row = interface.get_number_for_strike("row")
		column = interface.get_number_for_strike("column")
		return row, column
	end

	def loose_arrows(target, row, column)
		target.board.grid[row.to_i][column.to_i].hit!
	end

end

