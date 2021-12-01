class AddCategoryToStories < ActiveRecord::Migration[6.1]
  def change
    add_column :stories, :category, :string
  end
end
