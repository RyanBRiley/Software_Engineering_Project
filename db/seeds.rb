# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


test = Event.create!(name: "TEST EVENT",
                         event_date: 01/01/2014,
                         game_id: 1,
                         location: "undisclosed",
                         info: "Call of Duty")
