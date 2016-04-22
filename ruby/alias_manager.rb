# ask full name "Felicia Torres"
puts "Please enter your full name:"
full_name = gets.chomp

# split first name into individual letters
split_full_name = full_name.split('')
p split_full_name

# create vowel and consonant variables
vowels = "aeiouAEIOU"
consonants = "bcdfghjklmnpqrstvxzwyBCDFGHJKLMNPQRSTVXZWY"
# create a container to collect the replaced letters
full_alias = ""

# compare each letter in the name with the string of vowels
split_full_name.map! do |letter|
	# replace the letter "u" with "a"
	if letter == "u"
		full_alias += "a"
	# replace the letter "y" with "b"
	elsif letter == "y"
	    full_alias += "b"
	# do nothing to the empty space
	elsif letter == " "
	    full_alias += " "
	# if the current letter is a vowel
	elsif vowels.include?(letter)
		# replace the vowel with the next vowel from the string
		full_alias += vowels[vowels.index(letter) + 1]
	else
		# replace the consonant with the next consonant
		full_alias += consonants[consonants.index(letter) + 1] 
	end
	 full_alias
end

p full_alias
