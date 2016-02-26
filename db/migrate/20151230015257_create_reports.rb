class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :ip_address
      t.string :email
      t.string :description

      t.timestamps null: false
    end
  end
end
