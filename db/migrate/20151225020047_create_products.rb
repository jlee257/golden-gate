class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :name
      t.decimal :price
      t.decimal :rating
      t.integer :rating_count

      t.timestamps null: false
    end
  end
end
