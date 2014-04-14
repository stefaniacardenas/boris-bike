require "bike"

describe "Bike" do # this describes the functionality of a specific class (Bike)
	 
let (:bike) {Bike.new} #this method defines a local variable "bike" and uses the block provided in every test

	 it "should not be broken after we create it" do # this is the behaviour that we expect from our test
	 expect(bike).not_to be_broken
	 end	

	 it "can break" do
	 bike.break
	 	expect(bike).to be_broken
	 end

	 it "should be able to be fixed" do
	 	bike.fix
	 	expect(bike).not_to be_broken
	 end

end