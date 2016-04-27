class Santa
	
	def initialize(gender, ethnicity, age=0)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance ..."
	end
	
	def speak(greeting)
		puts greeting
		greeting
	end
	
	def eat_milk_and_cookies(pastry)
		puts "That was a good #{pastry}!"
		pastry
	end
	
end

santa = Santa.new
santa.speak("Ho, ho, ho! Haaaappy holidays!")
santa.eat_milk_and_cookies("chocolate chip")

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
	"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", 
	"Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end