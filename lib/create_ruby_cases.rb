all_types = Case.uniq.pluck(:type_of_incident)

all_types.each do |type|
	printf("if params[\:\"%s\"] == \"1\"\n", type)
	printf("\tall_types.push(\"%s\")\n", type)
	printf("end\n")
end