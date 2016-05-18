console.log("The script is running.")

//hide the paragraphs when the button is clicked
$(document).ready(function() {
	$("#btn1").click(function() {
		$("p").hide("slow");
	});
	$("#btn2").click(function() {
		$("p").show("slow");
	});
});

//change the color of the h1 when hovering
$(document).ready(function() {
	$("h1").hover(function() {
		$(this).css("color", "green");
	});
	$("h1").mouseleave(function() {
		$(this).css("color", "black");
	});
});