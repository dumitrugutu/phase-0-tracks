# Release 2.1

def build_array(first, second, third)
	return [first, second, third]
end

# Release 1

release_one = Array.new
p release_one
release_one << "hello" 
release_one << 9
release_one << true
release_one << "goodbye"
release_one << "green"
p release_one
release_one.delete_at(2)
p release_one
release_one.insert(2, "two")
p release_one
release_one.shift 
p release_one
if release_one.include?("horse")
 puts "This array contains the word 'horse'."
else 
 puts "This array does not contain the word 'horse'."
end
release = ["word", 5, "cheese", true, nil]
p release 
join_releases = release + release_one
p join_releases

# Call method to return an array
p build_array("word", 10, "bird")