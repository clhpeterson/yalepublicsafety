'''
all_types = Case.uniq.pluck(:type_of_incident)

all_types = all_types.sort
all_types.each do |type|
	puts type
end
'''
to_print = ""
File.open("temp").each do |line|
	to_print += "\"" + line[0..-2] + "\", "
end
puts to_print

