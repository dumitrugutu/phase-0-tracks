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

puts "What is the password?"
secret_password = gets.chomp

index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].next[0] 
  index += 1
end

puts secret_password

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

alphabet = "abcdefghijklmnopqrstuvwxyz"

index = 0
while index < secret_password.length
	secret_password[index] = alphabet[alphabet.index(secret_password[index]) -1]
	index += 1
end

puts secret_password