class CreateOrderStatusHistory < ActiveRecord::Migration[7.0]
  def change
    create_table :order_status_histories do |t|
      t.references :order, null: false, foreign_key: true
      t.references :order_status, null: false, foreign_key: true
      t.text :notes
      t.datetime :status_changed_at

      t.timestamps
    end
  end
end
