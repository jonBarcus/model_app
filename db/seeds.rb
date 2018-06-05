# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

MasterCountry.delete_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'model_countries.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
	masterCountry = MasterCountry.new
	masterCountry.name = row['name']
	masterCountry.un_member = row["un"]
	masterCountry.al_member = row["al"]
	masterCountry.oas_member = row["oas"]
	masterCountry.au_member = row["au"]
	masterCountry.eu_member = row["eu"]
	masterCountry.nato_member = row["nato"]
	masterCountry.save
end