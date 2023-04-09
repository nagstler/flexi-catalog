# # lib/tasks/bootstrap.rake

# namespace :db do
#   desc 'Bootstrap MySQL tables and associations'
#   task :bootstrap => :environment do

#     ActiveRecord::Schema.define do
#       create_table :categories do |t|
#         t.string :name
#         t.text :description
#         t.timestamps
#       end

#       create_table :brands do |t|
#         t.string :name
#         t.text :description
#         t.timestamps
#       end

#       create_table :products do |t|
#         t.string :name
#         t.text :description
#         t.references :category, foreign_key: true
#         t.references :brand, foreign_key: true
#         t.decimal :price, precision: 10, scale: 2
#         t.decimal :compare_at_price, precision: 10, scale: 2
#         t.string :sku
#         t.string :barcode
#         t.string :erp_product_reference_id
#         t.timestamps
#       end
      
#       create_table :variants do |t|
#         t.references :product, foreign_key: true
#         t.decimal :price, precision: 10, scale: 2
#         t.decimal :compare_at_price, precision: 10, scale: 2
#         t.string :sku
#         t.string :barcode
#         t.string :erp_variant_reference_id
#         t.timestamps
#       end

#       create_table :product_properties do |t|
#         t.string :name
#         t.text :description
#         t.timestamps
#       end

#       create_table :product_property_values do |t|
#         t.references :product, foreign_key: true
#         t.references :property, foreign_key: { to_table: :product_properties }
#         t.string :value
#         t.timestamps
#       end

#       create_table :variant_property_values do |t|
#         t.references :variant, foreign_key: true
#         t.references :property, foreign_key: { to_table: :product_properties }
#         t.string :value
#         t.timestamps
#       end

#       create_table :product_images do |t|
#         t.references :product, foreign_key: true
#         t.string :image_url
#         t.integer :position
#         t.string :alt_text
#         t.timestamps
#       end

#       create_table :variant_images do |t|
#         t.references :variant, foreign_key: true
#         t.string :image_url
#         t.integer :position
#         t.string :alt_text
#         t.timestamps
#       end

#       create_table :tags do |t|
#         t.string :name
#         t.timestamps
#       end

#       create_table :product_tags do |t|
#         t.references :product, foreign_key: true
#         t.references :tag, foreign_key: true
#       end

#       create_table :collections do |t|
#         t.string :name
#         t.text :description
#         t.timestamps
#       end

#       create_table :product_collections do |t|
#         t.references :product, foreign_key: true
#         t.references :collection, foreign_key: true
#       end

#       create_table :inventory do |t|
#         t.references :product, foreign_key: true
#         t.references :variant, foreign_key: true
#         t.integer :quantity
#         t.references :location, foreign_key: true
#         t.timestamps
#       end

#       create_table :locations do |t|
#         t.string :name
#         t.timestamps
#       end

#       create_table :tax_categories do |t|
#         t.string :name
#         t.timestamps
#       end

#       create_table :tax_rates do |
#         t.references :tax_category, foreign_key: true
#         t.references :zone, foreign_key: true
#         t.decimal :rate, precision: 10, scale: 2
#         t.timestamps
#       end

#       create_table :zones do |t|
#         t.string :name
#         t.timestamps
#       end
        
#       create_table :zone_members do |t|
#         t.references :zone, foreign_key: true
#         t.references :zoneable, polymorphic: true
#         t.timestamps
#       end

#       create_table :shipping_methods do |t|
#         t.string :name
#         t.references :zone, foreign_key: true
#         t.timestamps
#       end

#       create_table :shipping_rates do |t|
#         t.references :shipping_method, foreign_key: true
#         t.decimal :rate, precision: 10, scale: 2
#         t.timestamps
#       end

#       create_table :orders do |t|
#         t.string :order_number
#         t.decimal :total, precision: 10, scale: 2
#         t.decimal :shipping_cost, precision: 10, scale: 2
#         t.decimal :tax_amount, precision: 10, scale: 2
#         t.references :shipping_method, foreign_key: true
#         t.references :tax_rate, foreign_key: true
#         t.string :customer_name
#         t.string :customer_email
#         t.string :customer_phone
#         t.text :special_instructions
#         t.text :internal_notes
#         t.json :metadata
#         t.references :order_status, foreign_key: true
#         t.timestamps
#       end

#       create_table :order_items do |t|
#         t.references :order, foreign_key: true
#         t.references :product, foreign_key: true
#         t.references :variant, foreign_key: true
#         t.integer :quantity
#         t.decimal :price, precision: 10, scale: 2
#         t.timestamps
#       end

#       create_table :order_statuses do |t|
#         t.string :name
#         t.string :description
#         t.timestamps
#       end

#       create_table :order_status_histories do |t|
#         t.references :order, foreign_key: true
#         t.references :order_status, foreign_key: true
#         t.text :notes
#         t.datetime :status_changed_at
#         t.timestamps
#       end

#       create_table :shipping_addresses do |t|
#         t.references :order, foreign_key: true
#         t.string :name
#         t.string :street
#         t.string :city
#         t.string :state
#         t.string :postal_code
#         t.string :country
#         t.timestamps
#       end
      
#       create_table :billing_addresses do |t|
#         t.references :order, foreign_key: true
#         t.string :name
#         t.string :street
#         t.string :city
#         t.string :state
#         t.string :postal_code
#         t.string :country
#         t.timestamps
#       end
      

#     end
#   end
# end
