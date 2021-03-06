require "garage"
require "bike"

describe "Garage" do 

	let(:garage) { Garage.new(:capacity => 123) }
	let(:bike) { Bike.new }
	
	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq 123
	end

	it "should fix a bike after it arrives" do
		# I'm creating an event for every step just to have a visual understanding of what's going on
		expect(bike).not_to be_broken
		bike.break
		expect(bike).to be_broken
		garage.accept(bike)
		garage.fix_bikes
		expect(bike).not_to be_broken
	end

end