$(".search").ready(function(){
	
	$(".left input").click(function() {
		updateNarrow($(this).attr("value"));
	});

	$(".expandable a.collapse-control").click(function( event ) {
		event.preventDefault();
		expandExpandable($(this).parent());
	});

	$("input#start_date").datepicker({
			dateFormat:"yy-mm-dd"
		});
	$("input#end_date").datepicker({
			dateFormat:"yy-mm-dd"
		});


	var toExpand = $(".search #expand-field").attr("value");
	console.log(toExpand);
	expandExpandable($(".search #"+toExpand));
});

function updateNarrow(value) {
	var is_checked = $(".left input[value='"+value+"']").prop("checked");
	$(".right li[data_case_category*='"+value+"']").each(function(){
		$("input", this).prop("checked", is_checked);
	});
}

function expandExpandable(expandable) {
	$(".search .contents").addClass("hidden");
	$(".search .arrow").text("▶");

	$(".contents", expandable).removeClass("hidden");
	$(".arrow", expandable).text("▼");

	$(".search #expand-field").val(expandable.attr("id"));
}