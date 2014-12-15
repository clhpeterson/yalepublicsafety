all_types = Case.uniq.pluck(:type_of_incident)

all_types.each do |type|
	printf("\"%s\", ", type)
end