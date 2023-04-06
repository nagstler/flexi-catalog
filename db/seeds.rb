# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Attributes
attributes_data = [
  { name: 'Color', description: 'The color of the product or variant.' },
  { name: 'Size', description: 'The size of the product or variant.' },
  { name: 'Material', description: 'The material of the product.' }
]

attributes_data.each do |attr_data|
  Attribute.create!(attr_data)
end

# Brands
brands_data = [
  { name: 'Brand A', description: 'A popular brand for clothing and accessories.' },
  { name: 'Brand B', description: 'A well-known brand for electronics and gadgets.' },
  { name: 'Brand C', description: 'A high-quality brand for sports and outdoor equipment.' }
]

brands_data.each do |brand_data|
  Brand.create!(brand_data)
end

# Categories
categories_data = [
  { name: 'Clothing', description: 'Apparel and garments.' },
  { name: 'Electronics', description: 'Electronic devices and gadgets.' },
  { name: 'Sports', description: 'Sports equipment and accessories.' }
]

categories_data.each do |category_data|
  Category.create!(category_data)
end

# Collections
collections_data = [
  { name: 'Summer Collection', description: 'A collection of products for the summer season.' },
  { name: 'Winter Collection', description: 'A collection of products for the winter season.' },
  { name: 'Best Sellers', description: 'A collection of top-selling products.' }
]

collections_data.each do |collection_data|
  Collection.create!(collection_data)
end

# Locations
locations_data = [
  { name: 'Warehouse A' },
  { name: 'Warehouse B' }
]

locations_data.each do |location_data|
  Location.create!(location_data)
end

# Order Statuses
order_statuses_data = [
  { name: 'Pending', description: 'The order is pending and waiting for processing.' },
  { name: 'Processing', description: 'The order is being processed and prepared for shipping.' },
  { name: 'Shipped', description: 'The order has been shipped and is on its way to the customer.' },
  { name: 'Delivered', description: 'The order has been delivered to the customer.' },
  { name: 'Canceled', description: 'The order has been canceled.' }
]

order_statuses_data.each do |order_status_data|
  OrderStatus.create!(order_status_data)
end

# Shipping Methods
shipping_methods_data = [
  { name: 'Standard Shipping', zone_id: 1 },
  { name: 'Express Shipping', zone_id: 2 }
]

shipping_methods_data.each do |shipping_method_data|
  ShippingMethod.create!(shipping_method_data)
end

# Tax Categories
tax_categories_data = [
  { name: 'Standard' },
  { name: 'Reduced' },
  { name: 'Exempt' }
]

tax_categories_data.each do |tax_category_data|
  TaxCategory.create!(tax_category_data)
end

# Zones
zones_data = [
  { name: 'Zone A' },
  { name: 'Zone B' },
  { name: 'Zone C' }
]

zones_data.each do |zone_data|
  Zone.create!(zone_data)
end

# You can continue to create seed data for the other tables in a similar manner.
