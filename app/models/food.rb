class Food < ApplicationRecord
    belongs_to :restaurant
    has_one_attached :image
    has_many :food_reviews
    
    validates :name, :presence => true
    validates :price, :presence => true
end
