class FoodReview < ApplicationRecord
    belongs_to :user
    belongs_to :food
    
    validates :review, :presence => true
end
