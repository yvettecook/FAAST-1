require './lib/train.rb'

describe  Train do

	it "has coaches" do
		train = Train.new
		expect(train).to have_coaches
	end
	
end