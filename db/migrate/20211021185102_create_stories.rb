class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :illustration
      t.text :text
      t.text :summary

      t.timestamps
    end
  end
end
