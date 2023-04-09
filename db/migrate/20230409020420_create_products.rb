class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true
      t.decimal :price
      t.decimal :compare_at_price
      t.string :sku
      t.string :barcode
      t.string :erp_product_reference_id

      t.timestamps
    end
  end
end
