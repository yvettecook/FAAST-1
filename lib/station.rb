require_relative 'user_container'

class Station

	include UserContainer

	def initialize
		@trains = []
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

end