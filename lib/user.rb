class User

	def initialize
		@in_station = false
		@in_coach = false
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

	def in_coach?
		@in_coach
	end

	def enter(coach)
		@in_station = false
		@in_coach = true
	end

	def exit(coach)
		@in_station = true
		@in_coach = false
	end


end