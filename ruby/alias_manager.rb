# ask full name "Felicia Torres"
puts "Please enter your first name:"
first_name = gets.chomp

puts "Please eneter your last name:"
last_name = gets.chomp

# split first name into individual letters
split_first_name = first_name.split('')
p split_first_name

# split last name into individual letters
split_last_name = last_name.split('')
p split_last_name

# iterate through each letter in the first name

# swap first name with last name "Torres Felicia"

# replace every vowel("aeiou") in the name
# with the next vowel in ("aeiou")
# full_name = "Torres Felicia"
# def create_alias()

# 	vowel = "aeiou"
    
#     full_name.each do |letter| 
#     	letter = vowel.next
# end
#  p letter


# replace every consonant("bcdfghjklmnpqrstvxzwy") 
# in the name with the next consonant