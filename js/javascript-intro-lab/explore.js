// Reverse words

// Create a function that takes a string as an argument 
// Split the string into single letters using .split('')
// Reverse the order of each letter using .reverse()
// Add the letters back together using .join('')
// Print the result
// Call the function

function reverseString(str) {
    // create variable container
	var result = '';
	for (var i = str.length -1; i >= 0; i--)
    result += str[i];
	return result;
}

reverseString("This is madness!");


// function reverseWords(str) {
// 	var reversedString = str.split('').reverse().join('')
// 	if (reversedString == reversedString) {
// 		console.log(reversedString);
// 	} else {
// 		console.log("Student is dumb!")
// 	}
// }

// reverseWords("Hello World!");