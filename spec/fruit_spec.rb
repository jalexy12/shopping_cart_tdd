# Fruit Class: Name & Price
# Price method returns the price discounted 
# if the day is a weekend
require_relative("../lib/fruit.rb")

describe Fruit do 
	
	describe "#price" do 
		it "should return the discounted price for a fruit if its a weekend" do
			banana = Fruit.new("Banana", 10)
			today = Time.now
			
			if today.saturday? || today.sunday?
				expect(banana.price).to eq(9)
			else
				expect(banana.price).to eq(10)
			end
		end


	end
end