class Spot < ApplicationRecord
  validates :latitude, :longitude, :room_type, :price_per_day,
            :description, :amenities, :num_guests, :num_beds, :num_rooms,
            :img_url, presence: true


end