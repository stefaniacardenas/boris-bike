require "person"


describe Person do 
	it "has no bike" do 
		person = Person.new
		expect(person).not_to have_bike
	end

	it "has a bike" do 
		bike = double :bike
		person = Person.new(bike) 
		expect(person).to have_bike
	end

	it "can rent a bike from a docking station" do 
		bike = double :bike
		station = double :station , release_bike: :bike
		person = Person.new
		expect(station).to receive(:release_bike)
		person.rent_bike_from(station)
	end

	it "has a bike after renting it from the station" do 
		bike = double :bike
		station = double :station , release_bike: :bike
		person = Person.new
		expect(person.rent_bike_from(station)).to have_bike
	end

	it "can have an accident" do 
		bike = double :bike, break!: nil
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.accident
	end

end
