all_types = Case.uniq.pluck(:type_of_incident)

all_types = all_types.sort
all_types.each do |type|
	printf("\"%s\", ", type)
end