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

	def let_enter(user)
		raise "The train is not stopped, users can not enter" if !at_station?
		raise "This space is full, no more user is allowed" if full?
		users << user
	end

	def let_exit(user)
		raise "The train is not stopped, users can not exit" if !at_station?
		users.delete(user)
	end

end