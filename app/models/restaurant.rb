class Restaurant < ApplicationRecord
    # has_many foods
    has_many :foods
    has_one_attached :image
    has_many :restaurant_reviews
end
