class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.decimal :total
      t.decimal :shipping_cost
      t.decimal :tax_amount
      t.references :shipping_method, foreign_key: true
      t.references :tax_rate, foreign_key: true
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.text :special_instructions
      t.text :internal_notes
      t.json :metadata
      t.references :order_status, foreign_key: true

      t.timestamps
    end
  end
end
