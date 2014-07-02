class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :image
      t.string :nombre
      t.string :funcion
      t.text :resumen
      t.string :facebook
      t.string :linkening
      t.string :twitter
      t.string :googlemas

      t.timestamps
    end
  end
end
