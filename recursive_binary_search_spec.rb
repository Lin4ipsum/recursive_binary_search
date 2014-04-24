require_relative "recursive_binary_search"
require 'rspec'

describe Search do
	before do
		@s = Search.new
	end

	it "will default from to 0 and to nil if not specified" do
		a = [3,5,17,22,31,53,77,92]
		expect(@s.recursive_binary_search(a, 17)).to_not raise_error(ArgumentError)
	end

	it "will return the value if the value is less than the mid" do
		a = [3,5,17,22,31,53,77,92]
		@s.recursive_binary_search(a, 17).should == 17
	end

	it "will return nil the value if the value is not in the arrray" do
		a = [3,5,17,22,31,53,77,92]
		@s.recursive_binary_search(a, 18).should == nil
	end
end