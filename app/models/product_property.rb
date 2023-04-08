# app/models/product_property.rb
class ProductProperty < ApplicationRecord
    has_many :product_property_values
    has_many :products, through: :product_property_values
    has_many :variant_property_values
    has_many :variants, through: :variant_property_values
  end