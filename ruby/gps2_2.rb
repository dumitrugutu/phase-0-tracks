# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
list = "Milk eggs bread fruit cereal coffee"
# set default quantity
# grocery_list = {"milk" => 1, "eggs" => 1, "bread" => 1, "cereal" => 1, "coffee" => 1}
def create_grocery_list(list)
	grocery_list_hash = {}
  # print the list to the console [can you use one of your other methods here?]
  splitted_list = list.split(' ')
  # output: [what data type goes here, array or hash?]
  splitted_list.each do |name|
  	grocery_list_hash[name] = 1
  end
  grocery_list_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
def add_item_to_list(item, quantity)
	@list[item] = quantity
end
add_item_to_list("apples", 4)
# output:

# Method to remove an item from the list
def remove_item(item)
	@list.delete(item)
end
remove_item("eggs")
# input:
# steps:
# output:

# Method to update the quantity of an item
def update_list(item, quantity)
	@list[item] = quantity
end
update_list("apples", 3)
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def print_list
	@list.each do |name, value|
		puts "Today you have to buy #{name} of #{value}"
	end
end
print_list
# input:
# steps:
# output:

# Reflect
# What did you learn about pseudocode from working on this challenge?
# - knowing how to pseudocode correctly helps you along the way.

# What are the tradeoffs of using arrays and hashes for this challenge?
# - working with arrays you have to know each item's position inside the array.
# - working with hashes you have to deal with keys and values.
# 
# What does a method return?
# - it returns the last expression evaluated.

# What kind of things can you pass into methods as arguments?
# - strings, hashes, and most commonly variables.

# How can you pass information between methods?
# - using instance variables(variables with the @ sign).

# What concepts were solidified in this challenge, and what concepts are still confusing?
# - now I understand how to create methods and what to pass into agrguments. 
# - I want to get more practice pseudocoding.