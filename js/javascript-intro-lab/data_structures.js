// create two variables
var colors = ["red", "blue", "green", "brown"];
var names = ["Ed", "Champion", "Bud", "Tomm"];

// add another color to the array
colors.push("white");
// print the array
console.log(colors);
// add another name to the array
names.push("Lilly");
// print the array
console.log(names);

// create a dictionary
var horses = {}

// iterate through colors and names variables
// and assign each name to a color
for (var i = 0; i < names.length; i++) { 
  names[i] + " " + colors[i];
  // add each key-value pair to dictionary
  horses[names[i]] = colors[i];
}
// print the dictionary
console.log(horses);