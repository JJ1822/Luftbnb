class Api::SpotsController < ApplicationController

  before_action :require_user


  def index
    @spots = Spot.in_bounds(params[:bounds])
    render :index
  end

  def show
    @spot = Spot.includes(:reviews).find(params[:id])
    if @spot
      render :show
    else
      render json: ["This isn't the location you are looking for"], status: 404
    end
  end

  def create
    @spot = Spot.new(spot_params)
    p spot_params
    p @spot
    if @spot.save
      render :show
    else
      render json: @spot.errors.full_messages, status: 401
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:latitude, :longitude, :room_type,
                                 :price_per_day, :description,
                                 :num_guests, :num_beds, :num_bedrooms,
                                 :img_url, :name, :author_id, :num_bathrooms, :amenities => [])
  end
end
