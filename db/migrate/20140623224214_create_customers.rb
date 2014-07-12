class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :image_customer
      t.string :nombre

      t.timestamps
    end
  end
end
