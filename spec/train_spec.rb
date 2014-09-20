require './lib/train.rb'

describe  Train do

let(:train) {Train.new}

	it "has at least one coach" do
		expect(train.coach_count).to eq(1)
	end

	it "can have several coaches" do
		train = Train.new([:coach1, :coach2])
		expect(train.coach_count).to eq(2)
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