class ReviewsController < ApplicationController

  def new
    @story_found = Story.find(params[:story_id])
    @review = Review.new
  end
end
