class CreateInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_items do |t|
      t.string :uid
      t.references :invoice, foreign_key: true
      t.references :engine, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.float :amount, default: 0.0

      t.timestamps
    end
  end
end
