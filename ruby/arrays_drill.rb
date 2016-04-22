# Release 2.2
def build_array(word, digit)
	word << digit
end

# Release 2.1

def add_array(first, second, third)
	first << second << third
end
p add_array(["beer", "nuts"], "sports", "best")

# Release 1

release_one = Array.new
p release_one

release_one << "hello" << 9 << true << "goodbye" << "green"
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
p build_array(["one", "two"], 3)
p build_array(["word", "bird"], "river")
p build_array([1, 2], 3)