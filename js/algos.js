// BUSINESS LOGIC

// create an array that takes words and phrases as strings
// create a function that loops through the array
// and compares each string
// return the longest word or phrase

var array = ["long phrase","longest phrase","longer phrase", "this is a longer phrase"];

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
longestPhrase(array);

// DRIVER CODE

// ["long phrase","longest phrase","longer phrase"] => "longest phrase"