$(".search").ready(function(){
	var allbox = $(":checkbox#all");

	handleChecked(allbox, columns);
	$(".left input").each(function() {
		updateNarrow($(this).attr("id"));
	});
	
	allbox.click(function(){
		handleChecked($(this));
	});

	$(".left input").click(function() {
		updateNarrow($(this).attr("id"));
	});

	$(".expandable a").click(function( event ) {
		event.preventDefault();
		console.log("was clicked");
		$(".search .contents").addClass("hidden");
		$(".search .arrow").text("▶");
		$(".contents", $(this).parent()).removeClass("hidden");
		$(".arrow", $(this).parent()).text("▼");
	});

});

function handleChecked(checkbox) {
	if(checkbox.is(':checked')) {
		$("#columns :checkbox").prop("disabled", true);
		$("#columns label").addClass("disabled");
		$("input", columns).prop("checked", false);
	} else {
		$("#columns :checkbox").prop("disabled", false);
		$("#columns label").removeClass("disabled");
	}
}

function updateNarrow(id) {
	var is_checked = $(".left input[id="+id+"]").prop("checked");
	$(".right li[data_case_category*="+id+"]").each(function(){
		$("input", this).prop("checked", is_checked);
	});

}