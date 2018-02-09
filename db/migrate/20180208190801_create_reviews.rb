class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :body, null: false
      t.integer :rating, null: false
      t.integer :spot_id, null: false
      t.integer :author_id

      t.timestamps
    end
    add_index :reviews, :spot_id
  end
end
