class LikesController < ApplicationController

  def create 
    @story.likes.create(user_id: current_user.id)
    redirect_to story_path(@story)
  end

  private

  def find_story
    @story = Story.find(params[:story_id])
  end
  
end
