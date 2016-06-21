# Item Class: Name & Price
# has a method to return the price

require_relative("../lib/item.rb")

describe Item do 
	
	describe "#price" do 
		it "should return the price of the item as a number" do 
			# Setup for the expectation
			item = Item.new("Anchovies", 2)
			expect(item.price).to eq(2)
		end

		it "should return the price of the item as a number" do 
			# Setup for the expectation
			item = Item.new("Rice", 1)
			expect(item.price).to eq(1)
		end  
	end

end