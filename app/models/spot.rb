class Spot < ApplicationRecord
  validates :latitude, :longitude, :room_type, :price_per_day,
            :description, :amenities, :num_guests, :num_beds, :num_rooms,
            :img_url, presence: true

  def self.in_bounds(bounds)
    self.where("latitude < ?", bounds[:northEast][:latitude])
      .where("latitude > ?", bounds[:southWest][:latitude])
      .where("longitude > ?", bounds[:southWest][:longitude])
      .where("longitude < ?", bounds[:northEast][:longitude])
  end

end
