require './lib/station'
require './lib/train'

describe Station do
	
	it "has no train" do
		station = Station.new
		expect(station.train_count).to eq(0)
	end

	it "can accept a train" do
		station = Station.new
		train = Train.new
		station.accept(train)
		expect(station.train_count).to eq(1)
	end

	it "can accept several trains" do
		station = Station.new
		trains = [Train.new, Train.new]
		trains.each{|train| station.accept(train)}
		expect(station.train_count).to eq(2)
	end

end