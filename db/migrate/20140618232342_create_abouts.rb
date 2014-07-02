class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :subtitle
      t.string :image
      t.string :content_title
      t.text :content

      t.timestamps
    end
  end
end
