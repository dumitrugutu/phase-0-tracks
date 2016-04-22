# ask full name "Felicia Torres"
puts "Please enter your first name:"
first_name = gets.chomp.downcase

puts "Please enter your last name:"
last_name = gets.chomp.downcase

# split first name into individual letters
split_first_name = first_name.split('')
p split_first_name

# split last name into individual letters
split_last_name = last_name.split('')
p split_last_name

# create vowel and consonant variables
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvxzwy"
first_alias = ""

# compare each letter in the first name
# to the list of vowels
split_first_name.map! do |letter|
	# replace the letter "u" with "a"
	if letter == "u"
		first_alias += "a"	
	# if the current letter is a vowel
	elsif vowels.include?(letter)
		# replace the vowel with the next vowel
		first_alias += vowels[vowels.index(letter) + 1]
	else
		# replace the consonant with the next consonant
		first_alias += consonants[consonants.index(letter) + 1] 
	end
	p first_alias
end

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