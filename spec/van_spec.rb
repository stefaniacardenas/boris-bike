require "van"

describe Van do 

	let(:van) { Van.new(:capacity => 50) }
	
	it "should allow setting default capacity on initialising" do
		expect(van.capacity).to eq 50
	end

end