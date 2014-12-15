import re

g = open("/Users/carstenpeterson/Documents/yalelawtech/yalepublicsafety/app/views/case/_intypes2.html.erb", "w")

with open("/Users/carstenpeterson/Documents/yalelawtech/yalepublicsafety/app/views/case/_intypes.html.erb", "rw") as f:
	for line in f:
		print line
		compiled = re.compile(r"label_tag :\"[\sA-Z\-/(0-9\'\\]*\"")
		where_start = compiled.search(line)
		start = where_start.start()+11
		end = where_start.end()
		to_insert = line[start:end]
		compiled2 = re.compile(r"incidents\[\]")
		where_start2 = compiled2.search(line)
		start2 = where_start2.start()
		end2 = where_start2.end()
		new_line = line[:end2+1] + ", " + to_insert + line[end2+1:]
		g.write(new_line)
	f.close()
	g.close()
		


		
