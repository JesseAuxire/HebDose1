class ReviewsController < ApplicationController

  def new
    @story_found = Story.find(params[:story_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @story_found = Story.find(params[:story_id])
    @review.story = @story_found
     if @review.save
      redirect_to story_path(@story_found)
     else
      render :new
     end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @review.destroy
    redirect_to story_path(@review.story)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
