require_relative 'user_container'

class Coach

	include UserContainer

	def initialize(train="Train_number")
		self.capacity = 40
		@train = train
	end

	def attached_to_train?
		@train = true
	end

end