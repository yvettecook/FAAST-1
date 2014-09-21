require './lib/user.rb'
require './lib/station.rb'

describe User do 

	let(:user) {User.new}

	it "is not in a station" do
		expect(user).not_to be_in_station
	end

	it "can be touch in to enter a station" do
		station = double :station
		user.touch_in(station)
		expect(user).to be_in_station
	end


end
