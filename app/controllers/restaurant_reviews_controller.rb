class RestaurantReviewsController < ApplicationController
  before_action :set_restaurant_review, only: %i[ show edit update destroy ]
  before_action :find_restaurant
 
  # GET /restaurant_reviews or /restaurant_reviews.json
  def index
    @restaurant_reviews = RestaurantReview.all
  end

  # GET /restaurant_reviews/1 or /restaurant_reviews/1.json
  def show
     
  end

  # GET /restaurant_reviews/new
  def new
    @restaurant_review = RestaurantReview.new
  end
  

  # GET /restaurant_reviews/1/edit
  def edit
  end

  # POST /restaurant_reviews or /restaurant_reviews.json
  def create
    @restaurant_review = RestaurantReview.new(restaurant_review_params)
    @restaurant_review.user_id = current_user.id
    @restaurant_review.restaurant_id = @restaurant.id
    respond_to do |format|
      if @restaurant_review.save
        format.html { redirect_to restaurant_path(@restaurant), notice: "Restaurant review was successfully created." }
        format.json { render :index, status: :created, location: @restaurant_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_reviews/1 or /restaurant_reviews/1.json
  def update
    respond_to do |format|
      if @restaurant_review.update(restaurant_review_params)
        format.html { redirect_to restaurant_path(@restaurant), notice: "Restaurant review was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_reviews/1 or /restaurant_reviews/1.json
  def destroy
    @restaurant_review.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_path(@restaurant), notice: "Restaurant review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_review
      @restaurant_review = RestaurantReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_review_params
      params.require(:restaurant_review).permit(:user_id, :restaurant_id, :rating, :review)
    end
    
    def find_restaurant
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
    


end
