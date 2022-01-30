class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :civility
      t.string :address
      t.string :phone
      t.string :city
      t.string :country
      t.string :email
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
