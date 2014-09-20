class Train

	def initialize(coaches=1)
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

end