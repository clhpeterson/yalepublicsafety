require 'csv'
require 'Geocoder'

to_read = CSV.read(File.join("/Users/carstenpeterson/Documents/yalelawtech/yalepublicsafety", "db", "all.csv"), :encoding => 'utf-8', :headers => true)

to_write = CSV.open(File.join("/Users/carstenpeterson/Documents/yalelawtech/yalepublicsafety", "db", "coordinates2.csv"), "w")

to_append = ", New Haven, CT"

to_write << ["latitude", "longitude"]

i = 0

to_read.each do |location|
	if i > 416
		result = Geocoder.search(location['location'] + to_append)[0].data["geometry"]["location"]
		to_write << [result["lat"], result["lng"]]
		sleep 0.3
		puts i
	end
	i += 1
end

to_write.close()