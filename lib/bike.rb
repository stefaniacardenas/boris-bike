class Bike

	def initialize # The initialize method is called every time we create a new instance of the class
		fix
	end

	def broken?
		@broken
	end

	def break
		@broken = true
	end

	def fix
		@broken = false
	end

end