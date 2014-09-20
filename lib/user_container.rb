module UserContainer

	def users
		@users ||=[]
	end

	def user_count
		users.count
	end

	def let_enter(user)
		users << user
	end

	def let_exit(user)
		users.delete(user)
	end

end