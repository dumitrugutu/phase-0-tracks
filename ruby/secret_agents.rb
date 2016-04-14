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
  secret_password[index] = secret_password[index].next 
  index += 1
end

puts secret_password

