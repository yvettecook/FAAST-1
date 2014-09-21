require './lib/station.rb'
require './lib/coach.rb'
require './lib/user_container.rb'

class ContainerHolder; include UserContainer; end

describe ContainerHolder do
	
	let(:station) {Station.new}
	let(:coach) {Coach.new}
	let(:space) {ContainerHolder.new}

	it "has no users at opening" do
		expect(space.user_count).to eq(0)
	end

	it "can allow users to enter" do
		user = double :user
		space.let_enter(user)
		expect(space.user_count).to eq(1)
	end

	it "can allow users to exit" do
		user = double :user
		space.let_enter(user)
		space.let_exit(user)
		expect(space.user_count).to eq(0)
	end
end