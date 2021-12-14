require "application_system_test_case"

class RestaurantReviewsTest < ApplicationSystemTestCase
  setup do
    @restaurant_review = restaurant_reviews(:one)
  end

  test "visiting the index" do
    visit restaurant_reviews_url
    assert_selector "h1", text: "Restaurant Reviews"
  end

  test "creating a Restaurant review" do
    visit restaurant_reviews_url
    click_on "New Restaurant Review"

    fill_in "Rating", with: @restaurant_review.rating
    fill_in "Restaurant", with: @restaurant_review.restaurant_id
    fill_in "Review", with: @restaurant_review.review
    fill_in "User", with: @restaurant_review.user_id
    click_on "Create Restaurant review"

    assert_text "Restaurant review was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant review" do
    visit restaurant_reviews_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @restaurant_review.rating
    fill_in "Restaurant", with: @restaurant_review.restaurant_id
    fill_in "Review", with: @restaurant_review.review
    fill_in "User", with: @restaurant_review.user_id
    click_on "Update Restaurant review"

    assert_text "Restaurant review was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant review" do
    visit restaurant_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant review was successfully destroyed"
  end
end
