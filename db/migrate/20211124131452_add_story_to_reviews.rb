class AddStoryToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :story, null: false, foreign_key: true
  end
end
