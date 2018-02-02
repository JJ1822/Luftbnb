# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Spot.delete_all

Spot.create!(latitude: 37.780092, longitude: -122.412064,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: 4, num_beds: 2, num_rooms: 2,
             img_url: "https://goo.gl/tvktRg")

User.create!(email: "ILovetoCreateCoolStuff@gmail.com", first_name: "IamAHardWorker", password: "password")
