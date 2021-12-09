class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :filter_index]
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def filter_index
    @filter_stories = Story.where(category: params[:category])
    @category = params[:category]
  end
  
  def new
    @story = Story.new
  end

  def edit
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(story_params)
    @story.save

    redirect_to story_path(story)
  end

  private

  def story_params
    params.require(:story).permit(:title, :illustration, :text, :summary)
  end

end
