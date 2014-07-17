class TerminalBoard

	attr_reader :display_grid, :board

	GRID_RANGE = (0..9)

	def initialize board
		@display_grid = Array.new(10) {Array.new(10, " ")}
		@board = board	
	end

	def print_header
		puts " | 1 2 3 4 5 6 7 8 9 10"
	end

	def read

		GRID_RANGE.each do |x|
			GRID_RANGE.each do |y|
				@display_grid[x][y]= convert_contents_to_string(board.grid[x][y])
			end
		end	
	end	

	def print 
		print_header
		row_name = ["A","B","C","D","E","F","G","H","I","J"]
		GRID_RANGE.each do |x|
			puts "#{row_name[x]}| #{display_grid[x].join(" ")}"
		end
	end

	def convert_contents_to_string(square)
		if square.contents.is_a?(Water)
			 if square.has_been_hit?
				return "O" 
			end
		elsif  square.contents.sunk?
			return "#" 
		elsif square.has_been_hit?
			return "X"
		end
		" "
	end

end

