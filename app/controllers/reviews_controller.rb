class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build
  end

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    @review = restaurant.reviews.build(params_review)
    @review.save
    if @review.valid?
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
