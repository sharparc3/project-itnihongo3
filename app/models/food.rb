class Food < ApplicationRecord
    belongs_to :restaurant
    has_one_attached :image
    has_many :food_reviews
end
