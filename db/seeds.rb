# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Categories
categories_data = [
  { name: 'Clothing', description: 'Apparel and garments.' },
  { name: 'Electronics', description: 'Electronic devices and gadgets.' },
  { name: 'Sports', description: 'Sports equipment and accessories.' }
]

categories_data.each do |category_data|
  Category.create!(category_data)
end

# You can continue to create seed data for the other tables in a similar manner.
