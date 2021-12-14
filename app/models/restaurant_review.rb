class RestaurantReview < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant
     validates :rating, presence: true
    # accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
end
