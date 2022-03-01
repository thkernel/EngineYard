class CreateRentalItems < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_items do |t|
      
      t.string :uid
      t.references :rental, foreign_key: true
      t.references :engine, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.float :quantity, default: 0.0
      t.float :price, default: 0.0
      t.float :amount, default: 0.0
      t.string :status

      t.timestamps
    end
  end
end
