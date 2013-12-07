# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.create!(name: "Ryan Riley",
                         email: "Ryan.B.Riley@colorado.edu",
                         password: "test12",
                         password_confirmation: "test12",
                         admin: true)


cod = Game.create!(game_name: "Call of Duty: Ghosts",
                         game_id: 1,
                         user_id: 1,
                         info: "The new Call of Duty")
