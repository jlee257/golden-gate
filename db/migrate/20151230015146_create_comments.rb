class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :ip_address
      t.string :name
      t.string :description
      t.belongs_to :product, index: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
