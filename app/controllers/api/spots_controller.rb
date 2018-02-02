class Api::SpotsController < ApplicationController

  before_action :require_user

  def index
    @spots = Spot.all
    render :index
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      render :show
    else
      render json: @spot.errors.full_messages, status: 401
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:latitude, :longitude, :room_type,
                                 :price_per_day, :description, :amenities,
                                 :num_guests, :num_beds, :num_bedrooms, :img_url)
  end
end
