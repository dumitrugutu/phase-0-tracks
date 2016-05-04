// // create two variables
// var colors = ["red", "blue", "green", "brown"];
// var names = ["Ed", "Champion", "Bud", "Tomm"];

// // add another color to the array
// colors.push("white");
// // print the array
// console.log(colors);
// // add another name to the array
// names.push("Lilly");
// // print the array
// console.log(names);

// // RELEASE 2

// // create a dictionary
// var horses = {}

// // iterate through colors and names variables
// // and assign each name to a color
// for (var i = 0; i < names.length; i++) { 
//   names[i] + " " + colors[i];
//   // add each key-value pair to dictionary
//   horses[names[i]] = colors[i];
// }
// // print the dictionary
// console.log(horses);

// 	RELEASE 3

//declare car function with a few properties (model, year, hybrid)
function Car(model, year, hybrid, speed) {
  
  //create "this" dog 
  console.log("Our new car:", this);

  //and attributes similar to Ruby instance variables using this.name
  this.model = model;
  this.year = year;
  this.hybrid = hybrid;
  this.speed = speed;

  //create a function to accelerate from 0 to 100 mph in 5 seconds
  this.accelerate = function() {console.log("This car can accelerate from 0 to" 
 + " " + this.speed + " " + "mph in 5 seconds"); };
  
  //car initialization message
  console.log("CAR INITIALIZATION COMPLETE");
  
}

// create an empty array to store the cars
var carModels = []

//add driver code 
console.log("Let's build a car...")
var car = new Car("Toyota", 1995, false, 25);
console.log(car);
car.accelerate();
console.log("=================");
carModels.push(car)

console.log("Let's build a another car...")
var anotherCar = new Car("Ford", 2014, true, 45);
console.log(anotherCar);
anotherCar.accelerate();
console.log("This" + " " + anotherCar.model + " " 
+ "can run without fueling for 150 miles.")
console.log("=================");
carModels.push(anotherCar)

console.log("Let's build a car...")
var newCar = new Car("Lincoln", 2000, false, 35);
console.log(newCar);
newCar.accelerate();
console.log("=================");
carModels.push(newCar)

// print all the cars in the array
console.log(carModels)