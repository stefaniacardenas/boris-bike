class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station)
		@bike = station.release_bike
		self
	end

	def accident
		@bike.break!
	end


end