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
		/*if(!is_checked) {
			var cats = $(this).attr("data_case_category").split(" ");
			var should_hide = true;
			for (var i = cats.length - 1; i >= 0; i--) {
				if($(".left input[id="+cats[i]+"]").prop("checked")) {
					should_hide = false;
					break;
				}
			}
			if(should_hide) {
				$(this).hide();
			}
		} else {
			$(this).show();
		}*/
	});

}