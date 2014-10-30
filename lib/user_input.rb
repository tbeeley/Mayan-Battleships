class UserInput

	GRID_RANGE = (0..9)

	def initialize
			@directions = ["horizontal","vertical"]
			@numbers = %w[1 2 3 4 5 6 7 8 9 0]
	end

	attr_reader :directions, :numbers

	def get_name_of_player
		puts "Please enter your name"
		gets.chomp
	end

	def get_number_for_strike(axis)
		puts "Please enter your target #{axis}"
		target = gets.chomp
		check_number(target)
	end

	def get_number(axis, ship)
		puts "To place your #{ship.name}(#{ship.length}), please enter a #{axis} between 0 and 9"
		number = gets.chomp
		check_number(number)
	end

	def get_direction(ship)
		puts "To place your #{ship.name}(#{ship.length}), please select a direction (horizontal or vertical)"
		direction = gets.chomp
		check_direction(direction)
	end

	def check_direction(direction)
		while !directions.include?(direction.downcase)
			puts "That direction is not valid, please try again"
			direction = gets.chomp
		end
		direction
	end

	def check_number(number)
		while !numbers.include?(number)
			puts "That number is not valid, please try again"
			number = gets.chomp
		end
		number
	end

	def get_all_input(ship)
		row = get_number("row", ship)
		column = get_number("column", ship)
		direction = get_direction(ship)
		return row, column, direction
	end


	def get_coordinate
		puts "Please enter a coordinate"
		coordinate = gets.chomp
		# coordinate.convert
	end

	def convert

	end

	def print_header
		puts " | 1 2 3 4 5 6 7 8 9 10"
	end
	
	def print terminal_board
		print_header
		row_name = ["A","B","C","D","E","F","G","H","I","J"]
		GRID_RANGE.each do |x|
			puts "#{row_name[x]}| #{terminal_board.display_grid[x].join(" ")}"
		end
	end

end




