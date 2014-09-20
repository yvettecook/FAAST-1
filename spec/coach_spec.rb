require './lib/coach.rb'

describe Coach do

	let(:coach) {Coach.new}

	it "has no users at opening" do
		expect(coach.users_count).to eq(0)
	end

end