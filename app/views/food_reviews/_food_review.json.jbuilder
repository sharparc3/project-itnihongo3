json.extract! food_review, :id, :user_id, :restaurant_id, :food_id, :review, :created_at, :updated_at
json.url food_review_url(food_review, format: :json)
