require_relative 'player'
require_relative 'board'
require_relative 'ship'
require_relative 'squares'
require_relative 'user_input'
require_relative 'water'
require_relative 'game'
require_relative 'terminal_board'
require_relative 'own_terminal_board'

NUMBER_OF_PLAYERS = 2
NUMBER_OF_RAFTS = 1
NUMBER_OF_CANOES = 1
NUMBER_OF_SHORTBOATS = 1
NUMBER_OF_LONGBOATS = 1

class Game

	def initialize
		@players = []
		@interface = UserInput.new
		# play_game
	end

	attr_reader :players, :interface

	def create_players
		NUMBER_OF_PLAYERS.times do
			name = interface.get_name_of_player
			@players << Player.new(name: name)
		end
	end

	def create_board
		players.each do |player|
			player.board=Board.new
		end
	end

	def create_terminal_boards
		players.each do |player|
			player.terminal_board =TerminalBoard.new(player.board)
			player.own_terminal_board = OwnView.new(player.terminal_board)
		end
	end

	def create_ships
		players.each do |player|
			create_fleet_for(player)
		end
	end

	def create_fleet_for(player)
		NUMBER_OF_RAFTS.times 		{player.ships << Ship.raft}
		NUMBER_OF_CANOES.times 		{player.ships << Ship.canoe}
		NUMBER_OF_SHORTBOATS.times 	{player.ships << Ship.shortboat}
		NUMBER_OF_LONGBOATS.times 	{player.ships << Ship.longboat}
	end

end
