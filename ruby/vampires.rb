# Employee questionaire
puts "How many employees do you want to process?"
employee_form = gets.chomp.to_i

# Repeat the process until each employee has completed the form
until employee_form == 0

  # Collect personal information
  puts "What is your name?"
  name = gets.chomp
  
  # Convert string into an integer
  puts "What year were you born?"
  year_born = gets.chomp.to_i

  # Convert string into an integer
  puts "How old are you?"
  age = gets.chomp.to_i

  # Verify age
  current_year = 2016
  if (current_year - year_born) == age
    age = true
  else
    age = false
  end

  puts "Do you like eating garlic_bread for lunch?(yes/no)"
  garlic_bread = gets.chomp.upcase

  puts "Would you like to enroll in the company’s health insurance?(yes/no)"
  health_insurance = gets.chomp.upcase

  # Subtract 1 each time going through the loop
  employee_form = employee_form - 1

secret_allergy = "sunshine"
employee_input = ""

until employee_input == secret_allergy
  puts "PLease write down your allergies. Type 'done' when finished."
  allergies = gets.chomp.downcase
  break if allergies == secret_allergy
end
  
  puts "Name: #{name}"
  puts "Age: #{age}"
  puts "Likes garlic bread: #{garlic_bread}"
  puts "Wants health insurance: #{health_insurance}"
  puts "Allergic to: #{allergies}"
  
if (age < 100 && garlic_bread == "YES") || health_insurance == "YES"
    puts "Probably not a vampire."
elsif (allergies == secret_allergy && age > 100) && (garlic_bread == "NO" || health_insurance == "NO")
  puts "Probably a vampire."
elsif (age > 100 && garlic_bread == "NO") && health_insurance == "NO"
  puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."  
end
end