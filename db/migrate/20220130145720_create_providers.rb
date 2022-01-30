class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :uid
      t.string :company_name
      t.string :firt_name
      t.string :last_name
      t.string :civility
      t.string :address
      t.string :country
      t.string :city
      #t.string :locality
      t.string :phone
      t.string :email
      t.string :status
      t.text :description
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
