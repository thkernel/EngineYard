class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :uid
      t.references :customer, foreign_key: true
      t.float :subtotal, default: 0.0
      t.float :total , default: 0.0
      t.float :tax , default: 0.0
      t.float :shipping, default: 0.0
      t.string :status

      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
