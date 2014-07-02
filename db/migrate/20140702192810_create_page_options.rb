class CreatePageOptions < ActiveRecord::Migration
  def change
    create_table :page_options do |t|
      t.string :title
      t.string :subtitle
      t.string :footer_left
      t.string :footer_right
      t.string :image_option_logo

      t.timestamps
    end
  end
end
