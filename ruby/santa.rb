class Santa
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
        @age = age
        reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
	    "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def speak(greeting)
		puts greeting
		greeting
	end
	
	def eat_milk_and_cookies(pastry)
		puts "That was a good #{pastry}!"
		pastry
	end

	# setter methods
	def celebrate_birthday(age)
		puts "Santa is #{age} years old"
	end

	def get_mad_at(reindeer)
		puts "Santa is mad at #{reindeer}"
	end

	def gender(gender)
		puts "Santa is a #{@ethnicity} #{@gender}"
	end

	# getter methods 
	def age 
		@age
	end

	def ethnicity
		@ethnicity
	end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", 
	"Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santa = Santa.new("female", "Latino")
santa.speak("Ho, ho, ho! Haaaappy holidays!")
santa.eat_milk_and_cookies("chocolate chip")

santa.celebrate_birthday(1)
santa.gender("woman")
santa.get_mad_at("Vixen")

