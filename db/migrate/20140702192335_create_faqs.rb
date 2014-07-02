class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :content
      t.string :image_faq

      t.timestamps
    end
  end
end
