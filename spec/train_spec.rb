require './lib/train.rb'
require './lib/station.rb'

describe  Train do

let(:train) {Train.new }
let(:station) {Station.new}
let(:coach) {Coach.new}
let(:user) {User.new}

	it "has five coaches" do
		expect(train.coach_count).to eq(5)
	end

	it "should be at a station" do
		expect(train).to be_at_station
	end

	it "can travel between stations" do
		train.travel
		expect(train).not_to be_at_station
	end

	it "can stop at a station" do
		train.travel
		train.stop
		expect(train).to be_at_station
	end

	it "has no passenger" do
		expect(train.user_count).to eq(0)
	end

	it "can load users from a station" do
		train.let_enter(user)
		expect(train.user_count).to eq(1)
	end

	it "can unload users at a station" do
		train.let_enter(user)
		train.let_exit(user)
		expect(train.user_count).to eq(0)
	end





end