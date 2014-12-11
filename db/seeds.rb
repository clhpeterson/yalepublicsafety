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
	Case.create(date_reported: my_case[0], type_of_incident: my_case[1], date_occurred: my_case[2], time_occurred: my_case[3], location: my_case[4], disposition: my_case[5])
end