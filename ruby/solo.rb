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
		puts "How many cubes of sugar?"
		@sweet = gets.chomp.to_i
		puts "What flavor?"
		@flavor = gets.chomp.downcase
	    puts "Working on a #{size} iced coffee with #{sweet} cubes of sugar and #{flavor} flavor" 
	end

	def hot_coffee
		puts "How many cubes of sugar?"
		@sweet = gets.chomp.to_i
		puts "What flavor?"
		@flavor = gets.chomp.downcase
		puts "Brewing a #{size} size hot coffee with #{sweet} cubes of sugar and #{flavor} flavor"
	end

	def espresso
		puts "Your espresso will be ready shortly"
	end

end

orders = []

loop do
	
	puts "What kind of coffee would you like? Type 'done' to finish your order"
	type_of_coffee = gets.chomp.downcase
	
	if type_of_coffee == "done" || type_of_coffee == ""
        break
    end
    
    cup_of = CoffeeMachine.new("#{@sweet}", "#{@flavor}")
    orders << cup_of

    if type_of_coffee == "hot coffee"
    	cup_of.hot_coffee
    end

    if type_of_coffee == "iced coffee"
    	cup_of.iced_coffee
    end

    if type_of_coffee == "espresso"
    	cup_of.espresso
    end
        
end

p orders
