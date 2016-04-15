# Employee questionaire
puts "How many employees do you want to process?"
employee_form = gets.chomp.to_i

# Repeat the process until each 
# employee has completed the form
until employee_form == 0

  # Collect personal information
  puts "What is your name?"
  name = gets.chomp
  
  # Convert string into an integer
  puts "How old are you?"
  age = gets.chomp.to_i

  # Convert employee input into boolean
  if age < 100
    age = true
  else
    age = false
  end

  puts "Do you like eating garlic bread for lunch?(yes/no)"
  garlic_bread = gets.chomp.downcase
  # Convert employee input into boolean
  if garlic_bread == "yes"
    garlic_bread = true
  else
    garlic_bread = false
  end

  puts "Would you like to enroll in the company’s health insurance?(yes/no)"
  health_insurance = gets.chomp.downcase
  # Convert employee input into boolean
  if health_insurance == "yes"
    health_insurance = true
  else
    health_insurance = false
  end

  secret_allergy = "sunshine"

  # Check for allergies
  puts "Do you have any allergies? 
  Write 'done' when finished."
  allergies = gets.chomp.downcase

  until allergies == secret_allergy 
    puts "Do you have any other allergies?. Write 'done' when finished."
    allergies = gets.chomp.downcase
    break allergies == "done"
  end
  
  puts "Name: #{name}"
  puts "Age: #{age}"
  puts "Likes garlic bread: #{garlic_bread}"
  puts "Wants health insurance: #{health_insurance}"
  puts "Allergic to: #{allergies}"
    
  if allergies == "sunshine"
    puts "#{name} is probably a vampire"
  end
  
  # Detection algorithm
  case
  # When the employee got their age right
  # and wants garlic bread, and insurance.
  when age && (garlic_bread || health_insurance)
    puts "Probably not a vampire."

  # When the employee got their age wrong
  # and says no to garlic bread or insurance.
  when !age && (!garlic_bread || !health_insurance)
    puts "Probably a vampire."

  # When the employee got their age wrong
  # and says no to garlic bread and insurance. 
  when (!age && !garlic_bread) && !health_insurance
    puts "Almost certainly a vampire."

  # When employee's name is either one
  when name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."  
  end

  # Subtract 1 each time going through the loop
  employee_form = employee_form - 1

end

# After getting many calls from the Vampire Union:
puts "Actually, never mind! What do these questions 
have to do with anything? Let's all be friends."

