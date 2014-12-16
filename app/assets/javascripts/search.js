$(".search").ready(function(){
	
	$(".left input").click(function() {
		updateNarrow($(this).attr("value"));
	});

	$(".expandable a").click(function( event ) {
		event.preventDefault();
		$(".search .contents").addClass("hidden");
		$(".search .arrow").text("▶");
		$(".contents", $(this).parent()).removeClass("hidden");
		$(".arrow", $(this).parent()).text("▼");
	});

});

function updateNarrow(value) {
	var is_checked = $(".left input[value='"+value+"']").prop("checked");
	$(".right li[data_case_category*='"+value+"']").each(function(){
		$("input", this).prop("checked", is_checked);
	});

}