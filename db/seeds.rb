# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv = CSV.read(File.join(Rails.root, "db", "all.csv"), :encoding => 'utf-8', :headers => true)

csv.each do |my_case|
	Case.create(date_reported: Date.strptime(my_case['date_reported'], "%m/%d/%Y"), 
		type_of_incident: my_case['type_of_incident'], 
		date_occurred: Date.strptime(my_case['date_occurred'], "%m/%d/%Y"), 
		time_occurred: my_case['time_occurred'],
		location: my_case['location'], 
		disposition: my_case['disposition'], weekday: Date.strptime(my_case['date_occurred'], "%m/%d/%Y").strftime("%A"))
end