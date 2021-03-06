# How to ecnrypt the password:
# ask user for a password
# save their input as a variable 
# use a while loop to go through
# the password and replace each
# letter with the next letter in the
# alphabet by using .next method.
# Start at 0 because strings are 
# zero-indexed.
# Add +1 each time to avoid
# an infinite loop.
def encrypt(str)
	# Create the alphabet variable
	alphabet = "abcdefghijklmnopqrstuvwxyz"

    index = 0
    while index < str.length
      # If the letter is 'z' start counting at 0
      str[index] = str[index].next[0]
      index += 1
    end

    # If empty space move over to the next letter
	if str[index] == " "
	     index =+ 1
	end
	puts str
end

# How to decrypt the password:
# create a variable that contains
# all the letters of the alphabet
# start by using the whole alphabet
# as a string.
# take each letter of the password
# compare it with the alphabet string 
# to find the indexed number compared
# to the alphabet string.
# subtract 1 from that number.
# call it as the letter again and replace it

def decrypt(str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"

    index = 0
    while index < str.length
	    str[index] = alphabet[alphabet.index(str[index]) -1]
	    index += 1
    end

    # If empty space move over to the next letter
	if str[index] == " "
	     index =+ 1
	end
    puts str
end

puts "Would you like to encrypt or decrypt the password?"
agent_command = gets.chomp.downcase
puts "Please enter the password:"
password = gets.chomp.downcase

if agent_command == "encrypt"
	puts encrypt(password)
elsif agent_command == "decrypt"
   puts decrypt(password)
else 
	puts "Invalid input."
end

