// Reverse words

// Create a function that takes a string as an argument 
// Split the string into single letters using .split('')
// Reverse the order of each letter using .reverse()
// Add the letters back together using .join('')
// Print the result
// Call the function

function reverseWords(str) {
	var reversedString = str.split('').reverse().join('')
	console.log(reversedString);
}

reverseWords("Hello World!");