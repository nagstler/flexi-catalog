class CreateShippingMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_methods do |t|
      t.string :name
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
