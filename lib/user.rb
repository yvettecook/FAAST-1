class User

	def initialize(station=false, coach=false)
		@station = station
		@coach = coach
	end

	def in_station?
		@station
	end

	def touch_in(station)
		@station = station
		station.let_enter(self)
	end

	def touch_out(station)
		@station = false
		station.let_exit(self)
	end

	def in_coach?
		@coach
	end

	def board_coach(station, coach)
		@station = false
		@coach = coach
	end

	def alight_station(coach, station)
		@station = station
		@coach = false
	end


end