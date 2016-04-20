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