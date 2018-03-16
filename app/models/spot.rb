class Spot < ApplicationRecord
  validates :latitude, :room_type, :price_per_day,
            :description, :num_guests, :num_beds, :num_bedrooms,
            :name, :author_id, :amenities, presence: true

  
  has_many :reviews

  def self.in_bounds(bounds)
    p bounds
    self.where("latitude < ?", bounds[:northEast][:latitude])
      .where("latitude > ?", bounds[:southWest][:latitude])
      .where("longitude > ?", bounds[:southWest][:longitude])
      .where("longitude < ?", bounds[:northEast][:longitude])
  end

end
