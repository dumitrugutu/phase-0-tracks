puts "How many employees do you want to process?"
employee_form = gets.chomp.to_i

until employee_form == 0

  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no)"
  garlic_bread = gets.chomp.upcase
  puts "Would you like to enroll in the company’s health insurance?(yes/no)"
  health_insurance = gets.chomp.upcase

  employee_form = employee_form - 1
  
  puts "Name: #{name}"
  puts "Age: #{age}"
  puts "Likes garlic bread: #{garlic_bread}"
  puts "Wants health insurance: #{health_insurance}"
  
if (age < 100 && garlic_bread == "YES") || health_insurance == "YES"
    puts "Probably not a vampire."
elsif age > 100 && (garlic_bread == "NO" || health_insurance == "NO")
	puts "Probably a vampire."
elsif (age > 100 && garlic_bread == "NO") && health_insurance == "NO"
	puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."	
end

end