# Shopping Cart
# Should be able to add items
# Should be able to checkout and total all of the items

require_relative("../lib/shopping_cart.rb")
require_relative("../lib/fruit.rb")
require_relative("../lib/item.rb")


describe ShoppingCart do

	before :each do 
		@my_cart = ShoppingCart.new
		@banana = Fruit.new("Banana", 10)
		@my_cart.add_item(@banana)
	end
	
	describe "#add_item" do 
		it "should add an item to our shopping cart" do 
			expect(@my_cart.items.length).to eq(1)
		end
	end

	describe "#checkout" do 
		it "should total the prices of all of my items in the shopping cart" do
			today = Time.now
			anchovies = Item.new("Anchovies", 2)
			@my_cart.add_item(anchovies)

			if today.saturday? || today.sunday?
				expect(@my_cart.checkout).to eq(11)
			else
				expect(@my_cart.checkout).to eq(12)
			end

		end
	end

end