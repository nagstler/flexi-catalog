# lib/tasks/bootstrap.rake

namespace :db do
  desc 'Bootstrap MySQL tables and associations'
  task :bootstrap => :environment do

    ActiveRecord::Schema.define do
      create_table :categories do |t|
        t.string :name
        t.text :description
        t.timestamps
      end

      create_table :brands do |t|
        t.string :name
        t.text :description
        t.timestamps
      end

      create_table :products do |t|
        t.string :name
        t.text :description
        t.integer :category_id
        t.integer :brand_id
        t.decimal :price, precision: 10, scale: 2
        t.decimal :compare_at_price, precision: 10, scale: 2
        t.string :sku
        t.string :barcode
        t.string :erp_product_reference_id # Add this field for the ERP product reference ID
        t.timestamps
      end
      
      create_table :variants do |t|
        t.integer :product_id
        t.decimal :price, precision: 10, scale: 2
        t.decimal :compare_at_price, precision: 10, scale: 2
        t.string :sku
        t.string :barcode
        t.string :erp_variant_reference_id # Add this field for the ERP variant reference ID
        t.timestamps
      end

      # Product & Variant Attributes
      create_table :product_properties do |t|
        t.string :name
        t.text :description
        t.timestamps
      end

      create_table :product_property_values do |t|
        t.integer :product_id
        t.integer :property_id
        t.string :value
        t.timestamps
      end

      create_table :variant_property_values do |t|
        t.integer :variant_id
        t.integer :property_id
        t.string :value
        t.timestamps
      end

      create_table :product_images do |t|
        t.integer :product_id
        t.string :image_url
        t.integer :position
        t.string :alt_text
        t.timestamps
      end

      create_table :variant_images do |t|
        t.integer :variant_id
        t.string :image_url
        t.integer :position
        t.string :alt_text
        t.timestamps
      end

      create_table :tags do |t|
        t.string :name
        t.timestamps
      end

      create_table :product_tags do |t|
        t.integer :product_id
        t.integer :tag_id
      end

      create_table :collections do |t|
        t.string :name
        t.text :description
        t.timestamps
      end

      create_table :product_collections do |t|
        t.integer :product_id
        t.integer :collection_id
      end

      create_table :inventory do |t|
        t.integer :product_id
        t.integer :variant_id
        t.integer :quantity
        t.integer :location_id
        t.timestamps
      end

      create_table :locations do |t|
        t.string :name
        t.timestamps
      end

      create_table :tax_categories do |t|
        t.string :name
        t.timestamps
      end

      create_table :tax_rates do |t|
        t.integer :tax_category_id
        t.integer :zone_id
        t.decimal :rate, precision: 10, scale: 2
        t.timestamps
      end

      create_table :zones do |t|
        t.string :name
        t.timestamps
      end
        
      create_table :zone_members do |t|
        t.integer :zone_id
        t.integer :zoneable_id
        t.string :zoneable_type
        t.timestamps
      end

      create_table :shipping_methods do |t|
        t.string :name
        t.integer :zone_id
        t.timestamps
      end

      create_table :shipping_rates do |t|
        t.integer :shipping_method_id
        t.decimal :rate, precision: 10, scale: 2
        t.timestamps
      end

      create_table :orders do |t|
        t.string :order_number
        t.decimal :total, precision: 10, scale: 2
        t.decimal :shipping_cost, precision: 10, scale: 2
        t.decimal :tax_amount, precision: 10, scale: 2
        t.integer :shipping_method_id
        t.integer :tax_rate_id
        t.string :customer_name
        t.string :customer_email
        t.string :customer_phone
        t.text :special_instructions
        t.text :internal_notes
        t.json :metadata
        t.integer :order_status_id # Add a reference to the order_statuses table
        t.timestamps
      end

      create_table :order_items do |t|
        t.integer :order_id
        t.integer :product_id
        t.integer :variant_id
        t.integer :quantity
        t.decimal :price, precision: 10, scale: 2
        t.timestamps
      end

      create_table :order_statuses do |t|
        t.string :name
        t.string :description
        t.timestamps
      end

      create_table :order_status_history do |t|
        t.integer :order_id
        t.integer :order_status_id
        t.text :notes
        t.datetime :status_changed_at
        t.timestamps
      end

      create_table :shipping_addresses do |t|
        t.integer :order_id
        t.string :name
        t.string :street
        t.string :city
        t.string :state
        t.string :postal_code
        t.string :country
        t.timestamps
      end
      
      create_table :billing_addresses do |t|
        t.integer :order_id
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
end

