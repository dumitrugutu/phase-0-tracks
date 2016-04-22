# ask full name "Felicia Torres"
puts "Please enter your full name:"
full_name = gets.chomp

p full_name
# puts "Please enter your last name:"
# last_name = gets.chomp.downcase

# split first name into individual letters
split_full_name = full_name.split('')
p split_full_name
# # split last name into individual letters
# split_last_name = last_name.split('')

# create vowel and consonant variables
vowels = "aeiouAEIOU"
consonants = "bcdfghjklmnpqrstvxzwyBCDFGHJKLMNPQRSTVXZWY"
full_alias = ""

# compare each letter in the first name
# to the list of vowels
split_full_name.map! do |letter|
	# replace the letter "u" with "a"
	if letter == "u"
		full_alias += "a"
	elsif letter == "y"
	    full_alias += "b"
	elsif letter == " "
	    full_alias += " "
	# if the current letter is a vowel
	elsif vowels.include?(letter)
		# replace the vowel with the next vowel
		full_alias += vowels[vowels.index(letter) + 1]
	else
		# replace the consonant with the next consonant
		full_alias += consonants[consonants.index(letter) + 1] 
	end
	 full_alias
end

p full_alias
