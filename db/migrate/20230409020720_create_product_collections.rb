class CreateProductCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :product_collections do |t|
      t.references :product, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
