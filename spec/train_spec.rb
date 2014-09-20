require './lib/train.rb'

describe  Train do

let(:train) {Train.new}

	it "has coaches" do
		expect(train).to have_coaches
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

end