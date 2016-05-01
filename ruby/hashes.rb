
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
budget = gets.chomp
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

# print the hash back to the user
client_information.each do |contact, info|
    p "#{contact}: #{info}"
end

# ask the client if they want to update their profile
  puts "would you like to update/change anything?(yes/none)."
  change_info = gets.chomp.downcase

# ask the client if they want to update their profile
if change_info == "yes"
    puts "Which one would you like to change?(example: name)"
    # convert client's option into a symbol
    update_profile = gets.chomp.to_sym.downcase
    puts "#{update_profile}:"
    client_value = gets.chomp

    # update the hash with latest input
    client_information["#{update_profile}"] = client_value
    puts "Here's your updated profile"

    # iterate through the hash and print the updated profile
    client_information.each do |contact, info|
    p "#{contact}: #{info}"
    end
else
    # print the all the client's profile using iteration
    puts "Thank you, good bye!"
    client_information.each do |contact, info|
    p "#{contact}: #{info}"
    end
end  