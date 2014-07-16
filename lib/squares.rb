class Square
	
	def initialize 
		@contents = Water.new
		@hit = false
	end	

	def has_been_hit?
		@hit
	end

	attr_accessor :contents

	def add_marker_for(ship)
		@contents = ship
	end	

	def hit! 
		if has_been_hit?
			puts "You have already targeted this location"
		else
			@hit = true
			@contents.hit!
		end
	end

	# def report_hit
	# 	if contents.nil?
	# 		puts "Target missed. Bad luck!"
	# 	else
	# 		puts "BOOM! Target down"
	# 		@contents.add_hit 
	# 	end
	# end


end

	