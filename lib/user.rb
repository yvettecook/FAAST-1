class User

	def initialize
		@in_station = false
	end

	def in_station?
		@in_station
	end

	def touch_in(station)
		@in_station = true
	end

	def touch_out(station)
		@in_station = false
	end
end