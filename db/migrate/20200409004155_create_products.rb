class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.references :category, null: false, foreign_key: true
      t.string :size
      t.decimal :price
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
