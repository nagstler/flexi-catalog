class CreateVariantPropertyValues < ActiveRecord::Migration[7.0]
  def change
    create_table :variant_property_values do |t|
      t.references :variant, foreign_key: true
      t.references :property, foreign_key: { to_table: :product_properties }
      t.string :value

      t.timestamps
    end
  end
end
