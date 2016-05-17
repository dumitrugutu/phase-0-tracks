console.log("This is summertime!");

//create an h2 element after the img
function addHeading(event) {
	var grabButton = document.getElementById("button");
	var newHeading = document.createElement("h2");
	var textHeading = document.createTextNode("This is the second heading")
	newHeading.appendChild(textHeading);
	document.body.appendChild(newHeading);
}

addHeading();