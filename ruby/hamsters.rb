puts "What is the hamster's name?"
name = gets.chomp
puts "On a 1-10 scale, how loud is #{name}?"
volume = gets.chomp.to_i
puts "What color is #{name}?"
color = gets.chomp
puts "Is #{name} a good candidate for adoption?"
adoption = gets.chomp
age = nil
puts "What is #{name}'s estimated age?"
age = gets.chomp.to_i

puts "Name: #{name}"
puts "Noise level: #{volume}"
puts "Fur color: #{color}"
puts "Adoption status: #{adoption}"
puts "Age: #{age}"
