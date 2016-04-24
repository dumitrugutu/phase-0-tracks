my_array = ["redbull", "pbj", "laptop"]

my_hash = {
		"fruits" => "food",
		"cow" => "food",
		"bike" => "transportation",
		"car" => "transportation"
}

# iterate through the array using .each
my_array.each do |item|
	puts item
end

# iterate through the hash using .each
my_hash.each do |word, use|
	puts "#{word} is #{use}"
end

# iterate through the array and change last item using .map
my_array.map! do |item|
	puts item
	my_array.replace(["redbull", "pbj", "books"]) 
end

# iterates through deleting any words that have less than 4 letters
another_array = ["boom", "children", "beer", "apples", "two", "foo"]

another_array.each do |word|
	another_array.delete_if {|word| word.length < 4}
end

p another_array

# iterates through keeping any words that have less than 4 letters
third_array = ["boom", "children", "beer", "apples", "two", "foo"]

third_array.each do |word|
	third_array.keep_if {|word| word.length < 4}
end

p third_array

# iterates through rejecting any words that have more than 5 letters
second_array = ["boom", "children", "beer", "apples", "two", "foo"]

second_array.each do |word|
    second_array.reject! { |word| word.length > 5}
end

p second_array