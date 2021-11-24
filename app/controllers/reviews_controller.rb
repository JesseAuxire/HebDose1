class ReviewsController < ApplicationController

  def new
    @story_found = Story.find(params[:story_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @story_found = Story.find(params[:story_id])
    @review.story = @story_found
    @review.save
    redirect_to story_path(@story_found)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
