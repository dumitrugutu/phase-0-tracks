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

//click on the button to hide the picture
function hidePicture(event) {
	document.getElementById("summer").hidden = true;
}

var clickButton = document.getElementById("button");
clickButton.addEventListener("click", hidePicture);

//click on the button to show the picture
function showPicture(event) {
	document.getElementById("summer").hidden = false;
}

var clickButton = document.getElementById("show-button");
clickButton.addEventListener("click", showPicture);


