class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.integer :product_id
      t.string :address
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
