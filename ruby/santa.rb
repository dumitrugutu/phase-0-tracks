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

	# setter methods
	def celebrate_birthday=(new_age)
		@age = new_age
		puts "Santa is #{new_age} years old"
	end

	def get_mad_at=(reindeer_ranking)
		@get_mad_at = reindeer_ranking[4]
		puts "Santa is mad at #{reindeer_ranking[4]}"
	end

	def gender=(new_gender)
		@gender = new_gender
		puts "Santa is #{new_gender}"
	end

	# getter methods 
	def age 
		@age
	end

	def ethnicity
		@ethnicity
	end

	def get_mad_at
		@get_mad_at
	end

end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
	"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", 
	"Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santa = Santa.new("female", "Latino")
santa.speak("Ho, ho, ho! Haaaappy holidays!")
santa.eat_milk_and_cookies("chocolate chip")

santa.celebrate_birthday = 1
santa.ethnicity

santas = []
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

