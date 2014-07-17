class UserInput

	def get_name
		puts "Please enter your name"
		gets.chomp
	end

	def get_coordinate
		puts "Please enter a coordinate"
		coordinate = gets.chomp
		coordinate.convert
	end

	def get_direction
		puts "Please select your ship's direction"
		gets.chomp
	end


	def convert

	end

end




