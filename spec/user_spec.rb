require './lib/user.rb'
require './lib/station.rb'

describe User do 

	let(:user) {User.new}
	let(:station) {Station.new}
	let(:coach) {Coach.new}

	it "is not in a station" do
		expect(user).not_to be_in_station
	end

	it "can be touch in to enter a station" do
		user.touch_in(station)
		expect(user).to be_in_station
	end

	it "can touch out to exit a station" do
		user.touch_in(station)
		user.touch_out(station)
		expect(user).not_to be_in_station
	end

	it "is not in a train coach" do
		expect(user).not_to be_in_coach
	end

	it "can enter a train coach from a station" do
		user.touch_in(station)
		user.enter(coach)
		expect(user).not_to be_in_station
		expect(user).to be_in_coach
	end




end
