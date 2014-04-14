require "bike"

describe "Bike" do # this describes the functionality of a specific class (Bike)
	 it "should not be broken after we create it" do # this is the behaviour that we expect from our test
	 bike = Bike.new # initialise a new object of the Bike class
	 expect(bike).not_to be_broken # It exoect that an instance of this class has got a method called broken? and it will return to false
	 end	

	 it "can break" do
	 bike = Bike.new
	 bike.break
	 	expect(bike).to be_broken
	 end

	 it "should be able to be fixed" do
	 	bike = Bike.new
	 	bike.fix
	 	expect(bike).not_to be_broken
	 end

end