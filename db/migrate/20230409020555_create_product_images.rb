class CreateProductImages < ActiveRecord::Migration[7.0]
  def change
    create_table :product_images do |t|
      t.references :product, foreign_key: true
      t.string :image_url
      t.integer :position
      t.string :alt_text

      t.timestamps
    end
  end
end
