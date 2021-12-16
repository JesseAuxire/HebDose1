class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @last_stories = Story.last(4).reverse
  end

  def profile
  end

  def nav
    all_stories = Story.all
    @array = []
    all_stories.each do |story|
      @array << story.category if !(array.include? story.category)
    end
  end
end
