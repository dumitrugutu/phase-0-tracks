
# get client's information
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


# store client's information as a hash
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

# ask the client whether they want to 
# update their information.
  puts "Do you want to update/change any your information?(yes/none)."
  change_info = gets.chomp.downcase

if change_info == "none"
end

# ask the client whether they want
# to update their information
if change_info == "yes"
    puts "What part would you like to change?(example: name)"
    # convert client's option into a symbol
    update_profile = gets.chomp.to_sym.downcase
end  

# write if statements depending on what section they want to change
if  update_profile == :name
    puts "Name:"
    client_information[:name] = gets.chomp
end

if update_profile == :address
    puts "Address:"
    client_information[:address] = gets.chomp
end

if update_profile == :email
    puts "Email:"
    client_information[:email] = gets.chomp
end

if update_profile == :phone
    puts "Phone:"
    client_information[:phone] = gets.chomp
end

if update_profile == :budget
    puts "Budget:"
    client_information[:budget] = gets.chomp
end

if update_profile == :children
    puts "Children:"
    client_information[:children] = gets.chomp
end

if update_profile == :rooms
    puts "Rooms:"
    client_information[:rooms] = gets.chomp
end

if update_profile == :decor
    puts "Decor:"
    client_information[:decor] = gets.chomp
end

# print updated hash
p client_information