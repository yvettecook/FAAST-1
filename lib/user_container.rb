module UserContainer

	DEFAULT_CAPACITY = 40

	def users
		@users ||=[]
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def user_count
		users.count
	end

	def let_enter(user)
		raise "This space is full, no more user is allowed" if full?
		users << user
	end

	def let_exit(user)
		users.delete(user)
	end

	def full?
		user_count == capacity
	end

end