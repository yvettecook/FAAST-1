class Station

	def initialize
		@trains = []
	end

	def train_count
		@trains.count
	end

	def accept(train)
		@trains << train
	end

end