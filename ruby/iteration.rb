my_array = ["redbull", "pbj", "laptop"]

my_hash = {
		"fruits" => "food",
		"cow" => "food",
		"bike" => "transportation",
		"car" => "transportation"
}

my_array.each do |item|
	puts item
end

my_hash.each do |word, use|
	puts "#{word} is #{use}"
end

my_array.map! do |item|
	puts item
	my_array.replace(["redbull", "pbj", "books"]) 
end

delete_if_array = ["boom", "children", "beer", "apples", "two", "foo"]

random_array.each do |word|
	delete_if_array.delete_if {|word| word.length < 4}
end

p random_array

keep_if_array = ["boom", "children", "beer", "apples", "two", "foo"]

random_array.each do |word|
	random_array.keep_if {|word| word.length < 4}
end

p keep_if_array


reject_if_array = ["boom", "children", "beer", "apples", "two", "foo"]
container_array = []

reject_if_array.each do |word|
    reject_if_array.reject! { |word| word.length > 5}
end

p reject_if_array

