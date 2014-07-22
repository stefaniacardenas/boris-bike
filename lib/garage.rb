require "./lib/bike_container"

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		@bikes = []
	end

	def fix_bikes
		@bikes.each { | bike | bike.fix }
	end

	alias :accept :dock #we are writing an alias for the dock method we have in the bike_container

end