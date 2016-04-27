def name_swapper(pair_of_words)
  pair_of_words.split(' ').reverse.join(' ')
end

def vowel_and_cons_swapper(string)
	characters = string.chars
    # create vowel and consonant variables
    vowels = "aeiouAEIOU"
    consonants = "bcdfghjklmnpqrstvxzwyzBCDFGHJKLMNPQRSTVXZWYZ"

    # create a container to collect the replaced letters
    answer = ""

    # compare each letter in the name with the string of vowels
    characters.map! do |letter|
	    # replace the letter "u" with "a"
	    if letter == "u"
		    answer += "a"
	    # replace the letter "y" with "b"
	    elsif letter == "y"
	        answer += "b"
	    # do nothing to the empty space
	    elsif letter == " "
	        answer += " "
	    # if the current letter is a vowel
	    elsif vowels.include?(letter)
		    # replace the vowel with the next vowel from the string
		    answer += vowels[vowels.index(letter) + 1]
	    else
		    # replace the consonant with the next consonant
		    answer += consonants[consonants.index(letter) + 1] 
	    end
    end
   answer
end

name_to_change = "a"
secret_agent_names = {}

loop do
    # prompt agent for a name
    puts "Hello Private, please enter your name. Type 'quit' to exit the program."
    name_to_change = gets.chomp
    
    if name_to_change == "quit" || name_to_change == ""
    	break
    end
    # print the agent's alias
    puts name_swapper(vowel_and_cons_swapper(name_to_change))
    # store agent's name and alias inside the hash
    secret_agent_names[name_to_change] = name_swapper(vowel_and_cons_swapper(name_to_change))
end

# print all the names and aliases
secret_agent_names.each do |original_name, alias_name|
	puts "#{original_name} is also known as: #{alias_name}"
end
