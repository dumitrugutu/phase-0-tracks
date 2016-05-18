console.log("The script is running.")

//hide the paragraphs when the button is clicked
$(document).ready(function() {
	$("#btn1").click(function() {
		$("p").hide("slow");
	});
});