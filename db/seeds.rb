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
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.78893, longitude: -122.419155,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.779125, longitude: -122.426966,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.761790, longitude: -122.449925,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.766404, longitude: -122.401088,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.788747, longitude: -122.392794,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")

User.create!(email: "ILovetoCreateCoolStuff@gmail.com", first_name: "IamAHardWorker", password: "password")
