# Designing a Coffee Machine
# It will take 3 attributes: size, level of sweetnes, flavors 
# and 4 methods: initialize, ice coffee, hot coffee, espresso, 
# It will print: "Initializing a new cup of coffee" 
# for each new cup o coffee
# It will also print the type of coffee
# Work on some lame grinding noize


class Drink
    # create the shorthand attributes
	attr_accessor :sweet, :flavor
	attr_reader :size

	# create the methods
	def initialize(sweet, flavor)
		puts "Initializing a new cup of coffee..."
		@sweet = sweet
		@flavor = flavor
		@size = "medium"
	end
end

# a hash that stores all the orders
orders = {}

# loop until user types 'done'
loop do
	
	puts "What kind of coffee would you like? Type 'done' to finish your order"
	type_of_drink = gets.chomp.downcase
	
	# exit when user types 'done'
	break if type_of_drink == "done"
	
	if type_of_drink == "espresso"
		puts "One espresso coming right up!"
	else
		puts "How much sugar would you like?"
		sugar_wanted = gets.chomp
		puts "What flavor would you like to add?"
		flavor_wanted = gets.chomp
    end
    
    # add all the instances to the hash
    orders[type_of_drink] = Drink.new("#{sugar_wanted}","#{flavor_wanted}")

end

# iterate through the hash and print all the orders
orders.each do |drink,order|
	puts "Your #{drink} with #{order.sweet} of sugar and #{order.flavor} will be ready shortly!"
end

