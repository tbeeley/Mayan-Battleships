class Square
	
	def initialize 
		@ships = nil
		@hit = false
	end	

	def has_been_hit?
		@hit
	end

	attr_reader :ships

	def add_marker_for(ship)
		@ships = ship
	end	

	def hit!
		if has_been_hit?
			puts "You have already targeted this location"
		else
			@hit = true
			@ships.add_hit unless ships.nil?
		end
	end

end

	