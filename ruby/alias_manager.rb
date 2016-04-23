# prompt agent for a name
puts "Hello, Private! Please enter a name. Type 'quit' to exit the program."
name_to_change = gets.chomp

# split name into two strings
name_to_split = name_to_change.split

# swap last name with first name
name_to_reverse = name_to_split.reverse

# add the two string names into one
add_full_name = name_to_reverse[0] + " " + name_to_reverse[1]

# split the full name into separate letters
alias_for_agent = add_full_name.chars

# create vowel and consonant variables
vowels = "aeiouAEIOU"
consonants = "bcdfghjklmnpqrstvxzwyzBCDFGHJKLMNPQRSTVXZWYZ"

# create a container to collect the replaced letters
agent_alias = ""

# compare each letter in the name with the string of vowels
alias_for_agent.map! do |letter|
	# replace the letter "u" with "a"
	if letter == "u"
		agent_alias += "a"
	# replace the letter "y" with "b"
	elsif letter == "y"
	    agent_alias += "b"
	# do nothing to the empty space
	elsif letter == " "
	    agent_alias += " "
	# if the current letter is a vowel
	elsif vowels.include?(letter)
		# replace the vowel with the next vowel from the string
		agent_alias += vowels[vowels.index(letter) + 1]
	else
		# replace the consonant with the next consonant
		agent_alias += consonants[consonants.index(letter) + 1] 
	end
end
secret_agent_names = {}
secret_agent_names[agent_alias] = name_to_change

secret_agent_names.each do |original_name, alias_name|
	puts "#{original_name} is actually #{alias_name}"
end
