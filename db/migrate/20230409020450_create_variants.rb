class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :product, foreign_key: true
      t.decimal :price
      t.decimal :compare_at_price
      t.string :sku
      t.string :barcode
      t.string :erp_variant_reference_id

      t.timestamps
    end
  end
end
