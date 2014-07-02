class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :subtitle
      t.string :code
      t.string :content_title
      t.text :content_content
      t.string :data_title
      t.string :data_subtitle
      t.string :data_direction
      t.string :data_phone
      t.string :data_email
      t.string :data_time
      t.string :data_facebook
      t.string :data_linkedln
      t.string :data_twitter
      t.string :data_googlemas

      t.timestamps
    end
  end
end
