class CreateFoodReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :food_reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :food_id
      t.text :review

      t.timestamps
    end
  end
end
