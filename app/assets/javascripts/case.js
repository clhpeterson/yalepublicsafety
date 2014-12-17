$(".cases").ready(function() {
	$(".cases table").tablesorter().bind("sortEnd", function() {
		$(".cases table tr:odd").attr("class","odd");
		$(".cases table tr:even").attr("class", "even");
	});
});