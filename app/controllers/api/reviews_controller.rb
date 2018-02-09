class Api::ReviewsController < ApplicationController
  before_action :require_user

  def create
    @review = Review.new(review_params)
    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 401
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body, :bench_id)
  end

end
