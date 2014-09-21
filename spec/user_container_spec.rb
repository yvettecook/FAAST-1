require './lib/station.rb'
require './lib/coach.rb'
require './lib/user_container.rb'
require './lib/user.rb'

class PassengerHolder; include UserContainer; end

describe PassengerHolder do
	
	let(:station) {Station.new}
	let(:coach) {Coach.new}
	let(:space) {PassengerHolder.new}
	let(:user) {User.new}

	it "has no users at opening" do
		expect(space.user_count).to eq(0)
	end

	it "can let users enter" do
		space.let_enter(user)
		expect(space.user_count).to eq(1)
	end

	it "can let users exit" do
		space.let_enter(user)
		space.let_exit(user)
		expect(space.user_count).to eq(0)
	end

	it "should know when it's full" do
		fill(space)
		expect(space).to be_full
	end

	it "should not allow a new user when it's full" do
		fill(space)
		expect{space.let_enter(user)}.to raise_error(RuntimeError)
	end

	def fill(space)
		space.capacity.times {space.let_enter(User.new)}
	end

end