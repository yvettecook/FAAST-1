class Train

	include UserContainer

	def initialize
		@coaches ||= [Coach.new, Coach.new, Coach.new, Coach.new, Coach.new]
		self.capacity = 200
		stop
	end

	def coaches
		@coaches
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
		coaches.count
	end

end