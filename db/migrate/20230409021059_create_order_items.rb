class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.references :variant, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
