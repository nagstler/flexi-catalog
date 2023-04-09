class CreateShippingRates < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_rates do |t|
      t.references :shipping_method, null: false, foreign_key: true
      t.decimal :rate

      t.timestamps
    end
  end
end
