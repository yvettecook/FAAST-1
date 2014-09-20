require './lib/station'
require './lib/train'

describe Station do
	
	it "has no train" do
		station = Station.new
		expect(station.train_count).to eq(0)
	end

end