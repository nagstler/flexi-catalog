class CreateVariantImages < ActiveRecord::Migration[7.0]
  def change
    create_table :variant_images do |t|
      t.references :variant, null: false, foreign_key: true
      t.string :image_url
      t.integer :position
      t.string :alt_text

      t.timestamps
    end
  end
end
