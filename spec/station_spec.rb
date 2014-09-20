require './lib/station'
require './lib/train'

describe Station do

	let(:station) {Station.new}
	let(:train) {Train.new}
	
	it "has no train" do
		expect(station.train_count).to eq(0)
	end

	it "can allow a train in" do
		station.allow_in(train)
		expect(station.train_count).to eq(1)
	end

	it "can allow several trains in" do
		trains = [Train.new, Train.new]
		trains.each{|train| station.allow_in(train)}
		expect(station.train_count).to eq(2)
	end

	it "can allow a train to stop in the station" do
		expect(train).to receive(:stop)
		station.allow_stop(train)
	end

	it " can allow a train to leave the station" do
		expect(train).to receive(:travel)
		station.allow_leave(train)
	end

	it "has no users at opening" do
		expect(station.user_count).to eq(0)
	end

	it "can allow users enter" do
		user = double :user
		station.let_enter(user)
		expect(station.user_count).to eq(1)
	end

	it "can allow users exit" do
		user = double :user
		station.let_enter(user)
		station.let_exit(user)
		expect(station.user_count).to eq(0)
	end

	

end