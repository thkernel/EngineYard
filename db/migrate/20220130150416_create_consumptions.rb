class CreateConsumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :consumptions do |t|
      t.string :uid
      t.date :consumption_date
      t.references :engine, foreign_key: true
      t.references :driver, foreign_key: true
      t.float :quantity, default: 0.0
      t.string :unit
      t.string :fuel_type
      t.string :status
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
