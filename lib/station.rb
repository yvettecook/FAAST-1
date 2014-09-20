class Station

	def initialize
		@trains = []
		@users = []
	end

	def train_count
		@trains.count
	end

	def allow_in(train)
		@trains << train
	end

	def allow_stop(train)
		train.stop
		allow_in(train)
	end

	def allow_leave(train)
		train.travel
		@trains.delete(train)
	end

	def user_count
		@users.count
	end

	def let_enter(user)
		@users << user
	end

	def let_exit(user)
		@users.delete(user)
	end

end