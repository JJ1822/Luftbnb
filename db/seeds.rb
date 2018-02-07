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
             room_type: "entire home", price_per_day: 175,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2017/08/10/06/57/houses-2619208_960_720.jpg")
Spot.create!(latitude: 37.78893, longitude: -122.419155,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.779125, longitude: -122.426966,
             room_type: "entire home", price_per_day: 420,
             description: "this is a description", amenities: "wifi",
             num_guests: "10 guests", num_beds: "6 beds", num_bedrooms: "3 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/06/24/10/47/render-1477041_960_720.jpg")
Spot.create!(latitude: 37.761790, longitude: -122.449925,
             room_type: "entire home", price_per_day: 300,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/04/08/15/58/homes-for-sale-hoboken-nj-1316365_960_720.jpg")
Spot.create!(latitude: 37.766404, longitude: -122.401088,
             room_type: "entire home", price_per_day: 195,
             description: "this is a description", amenities: "wifi",
             num_guests: "5 guests", num_beds: "3 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/12/13/15/14/haarlem-1904288_960_720.jpg")
Spot.create!(latitude: 37.788747, longitude: -122.392794,
             room_type: "entire home", price_per_day: 335,
             description: "this is a description", amenities: "wifi",
             num_guests: "6 guests", num_beds: "3 beds", num_bedrooms: "3 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2013/03/19/13/54/foggy-bottom-95011_960_720.jpg")
Spot.create!(latitude: 37.780092, longitude: -122.412064,
             room_type: "entire home", price_per_day: 175,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2017/08/10/06/57/houses-2619208_960_720.jpg")
Spot.create!(latitude: 37.78893, longitude: -122.419155,
             room_type: "entire home", price_per_day: 110,
             description: "this is a description", amenities: "wifi",
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", author_id: 3, name: "this is the name",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.779125, longitude: -122.426966,
             room_type: "entire home", price_per_day: 420,
             description: "this is a description", amenities: "wifi",
             num_guests: "10 guests", num_beds: "6 beds", num_bedrooms: "3 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/06/24/10/47/render-1477041_960_720.jpg")
Spot.create!(latitude: 37.761790, longitude: -122.449925,
             room_type: "entire home", price_per_day: 300,
             description: "this is a description", amenities: "wifi",
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/04/08/15/58/homes-for-sale-hoboken-nj-1316365_960_720.jpg")
Spot.create!(latitude: 37.766404, longitude: -122.401088,
             room_type: "entire home", price_per_day: 195,
             description: "this is a description", amenities: "wifi",
             num_guests: "5 guests", num_beds: "3 beds", num_bedrooms: "2 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2016/12/13/15/14/haarlem-1904288_960_720.jpg")
Spot.create!(latitude: 37.788747, longitude: -122.392794,
             room_type: "entire home", price_per_day: 335,
             description: "this is a description", amenities: "wifi",
             num_guests: "6 guests", num_beds: "3 beds", num_bedrooms: "3 bedrooms", author_id: 3, name: "this is the name",
             img_url: "https://cdn.pixabay.com/photo/2013/03/19/13/54/foggy-bottom-95011_960_720.jpg")

User.create!(email: "ILovetoCreateCoolStuff@gmail.com", first_name: "IamAHardWorker", password: "password")
