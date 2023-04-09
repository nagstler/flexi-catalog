class CreateProductProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :product_properties do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
