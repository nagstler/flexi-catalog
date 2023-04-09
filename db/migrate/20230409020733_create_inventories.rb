class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.references :product, null: false, foreign_key: true
      t.references :variant, null: false, foreign_key: true
      t.integer :quantity
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
