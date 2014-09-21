require './lib/train.rb'
require './lib/station.rb'

describe  Train do

let(:train) {Train.new}
let(:station) {Station.new}
let(:coach) {Coach.new}

	it "has at least one coach" do
		expect(train.coach_count).to eq(1)
	end

	it "can add more coaches" do
		expect(train.coach_count).to eq(1)
		train.add_coach(coach)
		expect(train.coach_count).to eq(2)
	end

	it "can't have more than 10 coaches" do
		9.times {train.add_coach(Coach.new)}
		expect{train.add_coach(Coach.new)}.to raise_error(RuntimeError)
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