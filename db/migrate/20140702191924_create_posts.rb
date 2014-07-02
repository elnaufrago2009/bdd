class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image_post_big
      t.string :image_post_medium
      t.string :content_abstract
      t.text :content

      t.timestamps
    end
  end
end
