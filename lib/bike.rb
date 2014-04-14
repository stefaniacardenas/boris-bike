class Bike

	def initialize # The initialize method is called every time we create a new instance of the class
		@broken = false # This is an instance variable. It's introduced by @. we can use it in other methods and change it, because it's variable.
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