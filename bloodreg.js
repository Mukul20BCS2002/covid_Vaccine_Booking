$(document).ready(function () {
	$("#LeftToRight").on("click", function () {
		$("#slide").animate({
			marginLeft: "50%",
		});
		$(".top").animate({
			marginLeft: "0",
		});
	});
	$("#RightToLeft").on("click", function () {
		$("#slide").animate({
			marginLeft: "0",
		});
		$(".top").animate({
			marginLeft: "100%",
		});
	});
});
