class CreateTaxRates < ActiveRecord::Migration[7.0]
  def change
    create_table :tax_rates do |t|
      t.references :tax_category, foreign_key: true
      t.references :zone, foreign_key: true
      t.decimal :rate

      t.timestamps
    end
  end
end
