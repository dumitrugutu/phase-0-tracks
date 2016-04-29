# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(cheer)
# 		cheer + "Yay!" + " :)"
#     end
# end

# Shout.yell_angrily("Ughhh")
# Shout.yelling_happily("My code works.")

module Shout
	def cries_uncontrollably(nationality)
		puts "It's the saddest day of my life, shouts the boy as he cries in #{nationality}"
	end
end

class Spanish
	include Shout
end

class German
	include Shout
end

german = German.new
german.cries_uncontrollably("german")

spanish = Spanish.new
spanish.cries_uncontrollably("his mother's arms")