
# Get client's information
puts "Name:"
name = gets.chomp
puts "Address:"
address = gets.chomp
puts "Email:"
email = gets.chomp
puts "Phone:"
phone = gets.chomp
puts "Budget:"
budget = gets.chomp.to_i
puts "Do you have children?"
has_children = gets.chomp

# change yes/no answers into boolean
if has_children == "yes"
    has_children = true
else
    has_children = false
end

puts "How many rooms?"
number_rooms = gets.chomp
puts "Decor theme:"
decor_theme = gets.chomp


# Store client's information as a hash
client_information = {
    name: "#{name}", 
    address: "#{address}", 
    email: "#{email}", 
    phone: "#{phone}",
    budget: "$#{budget}",
    children: "#{has_children}",
    rooms: "#{number_rooms}",
    decor: "#{decor_theme}"
}

p client_information

# Ask applicant if they want to update their info
puts "If you would like to update the resume, write which section (example: name).
Type 'none' for no."
update_resume = gets.chomp.downcase
    
# Create a case statement if applicant
# has updated their information
if  update_resume == "name"
    puts "Name:"
    applicant[:name] = gets.chomp

elsif update_resume == "address"
    puts "Address:"
    applicant[:address] = gets.chomp

elsif update_resume == "email"
    puts "Email:"
    applicant[:email] = gets.chomp

elsif update_resume == "phone"
    puts "Phone:"
    applicant[:phone] = gets.chomp

elsif update_resume == "salary"
    puts "Salary:"
    applicant[:salary] = gets.chomp
elsif update_resume == "none"
else
    puts "Sorry! I did not get that."
end

# Print updated personal information
puts applicant[:name]
puts applicant[:address]
puts applicant[:email]
puts applicant[:phone]
puts applicant[:salary]
    
















