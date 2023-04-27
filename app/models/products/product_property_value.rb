# app/models/product_property_value.rb
class ProductPropertyValue < ApplicationRecord
    belongs_to :product
    belongs_to :property, class_name: 'ProductProperty', foreign_key: 'property_id'
  end