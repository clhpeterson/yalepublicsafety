$(".search").ready(function(){
	var columns = $("#columns");
	var allbox = $("input#all");

	handleChecked(allbox, columns);
	$(".left input").each(function() {
		updateNarrow($(this).attr("id"));
	});
	
	allbox.click(function(){
		handleChecked($(this), columns);
	});

	$(".left input").click(function() {
		updateNarrow($(this).attr("id"));
	});

});

function handleChecked(checkbox, columns) {
	if(checkbox.is(':checked')) {
		columns.hide();
		$("input", columns).prop("checked", false);
	} else {
		columns.show();
	}
}

function updateNarrow(id) {
	var is_checked = $(".left input[id="+id+"]").prop("checked");
	$(".right li[data_case_category*="+id+"]").each(function(){
		console.log($(this));
		$("input", this).prop("checked", is_checked);
		if(!is_checked) {
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
		}
	});

}