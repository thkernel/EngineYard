class CreateEngines < ActiveRecord::Migration[5.2]
  def change
    create_table :engines do |t|
      t.string :uid
      t.references :engine_category,  foreign_key: true
      t.string :brand
      t.string :engine_model
      t.string :manufacture_year
      t.string :name

      t.string :chassis_number
      t.string :immatriculation_number
      t.string :color
      t.datetime :manufacture_date
      t.datetime :circulation_date
      t.string :mileage
      t.string :fuel_type
      t.string :status
      t.text :description
      
      t.references :park, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
