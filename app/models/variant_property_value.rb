# app/models/variant_property_value.rb
class VariantPropertyValue < ApplicationRecord
    belongs_to :variant
    belongs_to :property, class_name: 'ProductProperty', foreign_key: 'property_id'
  end