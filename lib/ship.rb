class Ship

	DEFAULT_LENGTH = 3
	attr_reader :length, :hit_count, :name

	def initialize(length: DEFAULT_LENGTH, name: "ship")	
		@length = length
		@hit_count = 0
		@name = name
	end

	def self.raft
		new(length:2, name: "raft")
	end

	def self.canoe
		new(length:3, name: "canoe")
	end

	def self.shortboat
		new(length:4, name: "shortboat")
	end

	def self.longboat
		new(length:6, name: "longboat")
	end

	def add_hit
		@hit_count += 1
		if sunk? 
			report_sunk
		end
	end

	def sunk?
		hit_count == length
	end

	def report_sunk
		puts "#{self.name} has been sunk"
	end

end