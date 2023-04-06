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
          t.timestamps
        end
  
        create_table :variants do |t|
          t.integer :product_id
          t.decimal :price, precision: 10, scale: 2
          t.decimal :compare_at_price, precision: 10, scale: 2
          t.string :sku
          t.string :barcode
          t.timestamps
        end
  
        create_table :attributes do |t|
          t.string :name
          t.text :description
          t.timestamps
        end
  
        create_table :variant_attributes do |t|
          t.integer :variant_id
          t.integer :attribute_id
          t.string :value
        end
  
        create_table :product_images do |t|
          t.integer :product_id
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
      end
    end
end
  