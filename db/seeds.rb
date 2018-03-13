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















#######AUSTIN


Spot.create!(latitude: 30.259325, longitude: -97.756520,
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
Spot.create!(latitude: 30.253246, longitude: -97.745104,
             room_type: "private room", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 30.268962, longitude: -97.745448,
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
Spot.create!(latitude: 30.275189, longitude: -97.754546,
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
Spot.create!(latitude: 30.267850, longitude: -97.735234,
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
Spot.create!(latitude: 30.281712, longitude: -97.743044,
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
Spot.create!(latitude: 30.275930, longitude: -97.736264,
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
Spot.create!(latitude: 30.263180, longitude: -97.764845,
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
Spot.create!(latitude: 30.288012, longitude: -97.751027,
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
Spot.create!(latitude: 30.283046, longitude: -97.758494,
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
Spot.create!(latitude: 30.291643, longitude: -97.724505,
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
Spot.create!(latitude: 30.294756, longitude: -97.736521,
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














#######SAN DIEGO


Spot.create!(latitude: 32.707986, longitude: -117.154132,
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
Spot.create!(latitude: 32.711525, longitude: -117.149669,
             room_type: "private room", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 32.716147, longitude: -117.153789,
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
Spot.create!(latitude: 32.718891, longitude: -117.168551,
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
Spot.create!(latitude: 32.729216, longitude: -117.161342,
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
Spot.create!(latitude: 32.716797, longitude: -117.145377,
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
Spot.create!(latitude: 32.753907, longitude: -117184516,
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
Spot.create!(latitude: 32.746544, longitude: -117.163573,
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
Spot.create!(latitude: 32.733476, longitude: -117.162114,
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
Spot.create!(latitude: 32.764163, longitude: -117.135730,
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
Spot.create!(latitude: 32.751892, longitude: -117.115321,
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
Spot.create!(latitude: 32.686528, longitude: -117.117139,
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














#######LA


Spot.create!(latitude: 34.057644, longitude: -118.300092,
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
Spot.create!(latitude: 34.047048, longitude: -118.282755,
             room_type: "private room", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 34.034602, longitude: -118.278206,
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
Spot.create!(latitude: 34.038158, longitude: -118.263185,
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
Spot.create!(latitude: 34.036949, longitude: -118.250482,
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
Spot.create!(latitude: 34.044132, longitude: -118.251083,
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
Spot.create!(latitude: 34.056862, longitude: -118.252714,
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
Spot.create!(latitude: 34.051955, longitude: -118.232372,
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
Spot.create!(latitude: 34.061199, longitude: -118.238981,
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
Spot.create!(latitude: 34.068238, longitude: -118.219927,
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
Spot.create!(latitude: 34.066390, longitude: -118.261726,
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
Spot.create!(latitude: 34.034175, longitude: -118.213146,
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














#######Denver


Spot.create!(latitude: 39.769327, longitude: -105.030527,
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
Spot.create!(latitude: 39.767762, longitude: -104.973515,
             room_type: "private room", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 39.780161, longitude: -105.005310,
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
Spot.create!(latitude: 39.763669, longitude: -105.005623,
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
Spot.create!(latitude: 39.720553, longitude: -105.012672,
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
Spot.create!(latitude: 39.708746, longitude: -105.004527,
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
Spot.create!(latitude: 39.753555, longitude: -104.963648,
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
Spot.create!(latitude: 39.742416, longitude: -104.984401,
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
Spot.create!(latitude: 39.736153, longitude: -104.951822,
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
Spot.create!(latitude: 39.722421, longitude: -104.958871,
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
Spot.create!(latitude: 39.738562, longitude: -104.934593,
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
Spot.create!(latitude: 39.773360, longitude: -104.950099,
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














#######Houston


Spot.create!(latitude: 29.736499, longitude: -95.375852,
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
Spot.create!(latitude: 29.756005, longitude: -95.360585,
             room_type: "private room", price_per_day: 110,
             description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
             sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
             Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
             nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.", amenities:["wifi", "kitchen", "balcony", "washer", "shampoo", "dryer"],
             num_guests: "2 guests", num_beds: "1 bed", num_bedrooms: "1 bedroom", num_bathrooms: "1 bathroom", author_id: 3, name: "Luxury Mansion in the heart of Downtown",
             img_url: "https://www.sothebysrealty.com/extraordinary-living-blog/wp-content/uploads/2013/07/san-fran1.jpg")
Spot.create!(latitude: 29.752074, longitude: -95.369844,
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
Spot.create!(latitude: 29.761985, longitude: -95.360918,
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
Spot.create!(latitude: 29.743654, longitude: -95.350189,
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
Spot.create!(latitude: 29.755800, longitude: -95.349931,
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
Spot.create!(latitude: 29.773086, longitude: -95.360059,
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
Spot.create!(latitude: 29.770851, longitude: -95.373621,
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
Spot.create!(latitude: 29.766008, longitude: -95.377226,
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
Spot.create!(latitude: 29.769361, longitude: -95.389928,
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
Spot.create!(latitude: 29.744473, longitude: -95.403318,
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
Spot.create!(latitude: 29.725319, longitude: -95.412674,
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

User.create!(email: "ILovetoCreateCoolStuff@gmail.com", first_name: "Jay Johnson", password: "password")
