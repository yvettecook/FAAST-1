class Train

	def initialize(coaches=[1])
		@coaches = coaches
		stop
	end

	def has_coaches?
		!@coaches.nil?
	end

	def at_station?
		@at_station
	end

	def travel
		@at_station = false
	end

	def stop
		@at_station = true
	end

	def coach_count
		@coaches.count
	end

	def add_coach(coach)
		raise "A train can't have more than 10 coaches" if coach_count ==10
		@coaches << coach
	end

end