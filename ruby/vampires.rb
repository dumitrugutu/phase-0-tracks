puts "What is your name?"
name = gets.chomp.upcase
puts "How old are you?"
age = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no)"
garlic_bread = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance?(yes/no)"
health_insurance = gets.chomp.downcase

if age.to_i < 100 && (garlic_bread == "yes" || health_insurance == "yes")
	puts "Probably not a vampire."
elsif (age.to_i > 100 && garlic_bread == "no") || health_insurance == "no"
	puts "Probably a vampire."
elsif age.to_i > 100 && (garlic_bread == "no" && health_insurance == "no")
	puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."	
end