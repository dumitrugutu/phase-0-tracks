// BUSINESS LOGIC

// create an array that takes words and phrases as strings
// create a function that loops through the array
// and compares each string
// return the longest word or phrase

function longestPhrase(phrase) {
    var shortest = 0;
    var longest;
    for (var word = 0; word < phrase.length; word++)
    if (array[word].length > shortest) {
    	shortest = array[word].length;
    	longest = array[word];
    }
    console.log(longest);    	
}

// create a functions that compares two objects for matching key-value pair
// create a variable and set to false
// iterate through the first object
// iterate through the second object
// if at least one matches, return true, else false

function commonDetails(hash1, hash2) {
	var matchingDetail = false;
    var key1;
    var key2;
	for ( key1 in hash1 ) {
		// console.log(key1);
		for ( key2 in hash2) {
			// console.log(key2);
			if ( key1 == key2 ) {
				if ( hash1[key1] == hash2[key2] )
				    matchingDetail = true;
			}
		}
	}
    return matchingDetail;
}


// DRIVER CODE

// testcode for longestPhrase
var array = ["long phrase","longest phrase","longer phrase", "this is a longer phrase"];
longestPhrase(array);

// testcode for commonDetails
// var firstHash = { name: "Tamir", age: 55 };
// var secondHash = { name: "Steven", age: 55 };
var firstHash = { name: "Tamir", age: 54 };
var secondHash = { name: "Steven", age: 55 };
console.log( commonDetails(firstHash, secondHash) );

