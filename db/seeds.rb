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
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities: ["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "2 bathrooms", author_id: 3, name: "Large Open Home in SOMO area ",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/NF6P1OX124.jpg")
Spot.create!(latitude: 37.78893, longitude: -122.419155,
             room_type: "private room", price_per_day: 110,
             description: "A single room in a huge home right in the middle of it all.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.779125, longitude: -122.426966,
             room_type: "entire cabin", price_per_day: 420,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "10 guests", num_beds: "6 beds", num_bedrooms: "3 bedrooms",num_bathrooms: "4 bathrooms", author_id: 3, name: "Spacious open Condo",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/2K73C1LB6B.jpg")
Spot.create!(latitude: 37.761790, longitude: -122.449925,
             room_type: "entire home", price_per_day: 300,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "3 bathrooms", author_id: 3, name: "You won't want to leave our HOUSE!!!",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/PQBKOX33PD.jpg")
Spot.create!(latitude: 37.766404, longitude: -122.401088,
             room_type: "entire home", price_per_day: 195,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "5 guests", num_beds: "3 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "2 bathrooms", author_id: 3, name: "Brand new Home available for long term",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/IZTO6FB5HM.jpg")
Spot.create!(latitude: 37.788747, longitude: -122.392794,
             room_type: "entire home", price_per_day: 335,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "6 guests", num_beds: "3 beds", num_bedrooms: "3 bedrooms",num_bathrooms: "2 bathrooms", author_id: 3, name: "Stay in my Condo/Great Views",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/LJ515CPAKI.jpg")
Spot.create!(latitude: 37.799949, longitude: -122.421601,
             room_type: "entire home", price_per_day: 175,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "2 bathrooms", author_id: 3, name: "Can't miss prime location Home",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/76A5E16761.jpg")
Spot.create!(latitude: 37.787808, longitude: -122.433961,
             room_type: "entire home", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom",author_id: 3, name: "Pets welcome at my Place",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 37.791946, longitude: -122.398255,
             room_type: "entire home", price_per_day: 420,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "10 guests", num_beds: "6 beds", num_bedrooms: "3 bedrooms",num_bathrooms: "4 bathrooms", author_id: 3, name: "Plenty of beds her for all Guests",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/JO8UW3FDNJ.jpg")
Spot.create!(latitude: 37.794726, longitude: -122.427009,
             room_type: "entire home", price_per_day: 300,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "4 guests", num_beds: "2 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "2 bathrooms", author_id: 3, name: "Somo dream spot for your family VACA",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/8512A55AD8.jpg")
Spot.create!(latitude: 37.783874, longitude: -122.428897,
             room_type: "entire home", price_per_day: 195,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "5 guests", num_beds: "3 beds", num_bedrooms: "2 bedrooms",num_bathrooms: "1 bathroom", author_id: 3, name: "Pick Me!!!!! Your next rental",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/IM20JJF5IY.jpg")
Spot.create!(latitude: 37.773630, longitude: -122.409070,
             room_type: "entire home", price_per_day: 335,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "6 guests", num_beds: "3 beds", num_bedrooms: "3 bedrooms",num_bathrooms: "3 bathrooms", author_id: 3, name: "Our Home is your Home",
             img_url: "https://cdn.stocksnap.io/img-thumbs/960w/14B30A6585.jpg")

User.create!(email: "ILovetoCreateCoolStuff@gmail.com", first_name: "IamAHardWorker", password: "password")
