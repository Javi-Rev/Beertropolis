class ReviewsController < ApplicationController
  def create
    @beer = Beer.find(params[:beer_id])
    @review = Beer.review.create(review_params)
  end

  def destroy
    @beer = Beer.find(params[:beer_id])
    @review = Beer.review.find(review_params)
    @review.destroy
  end

  pivate
    def review_params
      params.require(:review).permit(:manufacturer, :name, :location, :price, :rating, :body)
    end
end
