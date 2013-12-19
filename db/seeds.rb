# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




lol = Game.create!(game_name: "League of Legends",
                         game_id: 2,
                         user_id: 2,
                         info: "A MOBA that has taken over the e-sport scene.")

dota2 = Game.create!(game_name: "DoTA 2",
                         game_id: 3,
                         user_id: 3,
                         info: "The sequel to the MOBA that started it all.")

sc2 = Game.create!(game_name: "Starcraft 2",
                         game_id: 4,
                         user_id: 4,
                         info: "The most popular RTS ever, huge in the e-sport community of Korea.")



