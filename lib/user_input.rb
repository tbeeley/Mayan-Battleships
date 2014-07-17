class UserInput


	def initialize
			@directions = ["horizontal","vertical"]
			@numbers = %w[1 2 3 4 5 6 7 8 9 0]
	end

	attr_reader :directions, :numbers

	def get_name_of_player
		puts "Please enter your name"
		gets.chomp
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

	def get_coordinate
		puts "Please enter a coordinate"
		coordinate = gets.chomp
		# coordinate.convert
	end

	def convert

	end

end




