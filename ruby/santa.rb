class Santa

	attr_accessor :age
	attr_reader :gender, :ethnicity
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
        @age = age
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
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
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		@reindeer_ranking
	end

	# def gender=(gender)
	# 	@gender = gender
	# end

	# def ethnicity=(ethnicity)
	# 	@ethnicity = ethnicity
	# end

	# def age=(age)
	# 	@age = age
	# end

	# getter methods 
	# def age 
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["USA", "Canada", "Mexico", "Brasil", "Ghana", "Niger", "South Africa", 
	"Australia", "Russia", "Germany", "Scotland", "Malta", "Korea", "Japan", "Wonderland", "N/A"]

140.times do 
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	santa.age = rand(140)
	puts "This santa is a #{santa.age} years old #{santa.gender} from #{santa.ethnicity}"
end

# santas = []
# example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santa = Santa.new("female", "Latino")
# santa.speak("Ho, ho, ho! Haaaappy holidays!")
# santa.eat_milk_and_cookies("chocolate chip")
# santa.celebrate_birthday(1)
# santa.gender
# santa.get_mad_at("Rudolph")
