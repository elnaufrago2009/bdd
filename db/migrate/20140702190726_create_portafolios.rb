class CreatePortafolios < ActiveRecord::Migration
  def change
    create_table :portafolios do |t|
      t.string :title
      t.string :subtitle
      t.string :content_resumen
      t.text :content
      t.string :image_portafolio_big
      t.string :image_portafolio_medium
      t.string :image_portafolio_small

      t.timestamps
    end
  end
end
