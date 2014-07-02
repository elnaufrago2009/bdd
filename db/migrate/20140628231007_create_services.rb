class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :principal_title
      t.string :principal_subtitle
      t.string :principal_image
      t.string :content_principal_title
      t.text :content_principal_content
      t.string :content_segundario_title
      t.text :content_segundario_content
      t.string :tab_one_title
      t.text :tab_one_content
      t.string :tab_one_image
      t.string :tab_two_title
      t.text :tab_two_content
      t.string :tab_two_image
      t.string :tab_three_title
      t.text :tab_three_content
      t.string :tab_three_image
      t.string :tab_four_title
      t.text :tab_four_content
      t.string :tab_four_image
      t.string :tab_five_title
      t.text :tab_five_content
      t.string :tab_five_image
      t.string :service_title
      t.string :service_subtitle
      t.string :service_one_title
      t.string :service_one_content
      t.string :service_one_image
      t.string :service_two_title
      t.string :service_two_content
      t.string :service_two_image
      t.string :service_three_title
      t.string :service_three_content
      t.string :service_three_image

      t.timestamps
    end
  end
end
