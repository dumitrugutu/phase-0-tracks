module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily(cheer)
		cheer + "Yay!" + " :)"
    end
end

Shout.yell_angrily("Ughhh")
Shout.yelling_happily("My code works.")

