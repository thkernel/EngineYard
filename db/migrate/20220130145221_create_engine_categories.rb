class CreateEngineCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :engine_categories do |t|
      t.string :uid
      t.string :name
      t.text :description
      t.string :status
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
