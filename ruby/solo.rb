# Designing a Coffee Machine
# It will take 3 attributes: size, level of sweetnes, flavors 
# and 4 methods: initialize, ice coffee, hot coffee, espresso, 
# It will print: "Initializing a new cup of coffee" 
# for each new cup o coffee
# It will also print the type of coffee
# Work on some lame grinding noize


class CoffeeMachine
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

	def iced_coffee
	    puts "Working on a #{size} iced coffee..." 
	end

	def hot_coffee
		puts "Brewing a #{size} size hot coffee..."
	end

	def espresso
		puts "Your espresso will be ready shortly"
	end

end

cup_of = CoffeeMachine.new("2 cubes", "hazelnut")
cup_of.iced_coffee
cup_of.hot_coffee

