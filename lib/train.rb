class Train

def initialize(coaches=1)
	@coaches = coaches
end

def has_coaches?
	!@coaches.nil?
end

end