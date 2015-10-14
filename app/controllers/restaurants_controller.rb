class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(params_restaurant)
    @restaurant.save
    if @restaurant.valid?
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
