require './lib/station'
require './lib/train'

describe Station do

	let(:station) {Station.new}
	let(:train) {Train.new}
	let(:user) {User.new}
	
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

end