class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.references :product, foreign_key: true
      t.references :variant, foreign_key: true
      t.integer :quantity
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
