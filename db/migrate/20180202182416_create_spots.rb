class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.string :room_type, null: false
      t.integer :price_per_day, null: false
      t.string :description, null: false
      t.string :amenities, default: [], array: true
      t.string :num_guests, null: false
      t.string :num_beds, null: false
      t.string :num_bedrooms, null: false
      t.string :img_url
      t.string :name, null: false
      t.integer :author_id, null: false
      t.string :num_bathrooms

      t.timestamps
    end
  end
end
