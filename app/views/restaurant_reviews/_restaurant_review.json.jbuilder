json.extract! restaurant_review, :id, :user_id, :restaurant_id, :rating, :review, :created_at, :updated_at
json.url restaurant_review_url(restaurant_review, format: :json)
