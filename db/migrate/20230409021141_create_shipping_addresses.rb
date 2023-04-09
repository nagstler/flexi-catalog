class CreateShippingAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_addresses do |t|
      t.references :order, foreign_key: true
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
