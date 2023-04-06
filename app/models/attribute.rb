class Attribute < ApplicationRecord
    has_many :product_attributes
    has_many :products, through: :product_attributes
    has_many :variant_attributes
    has_many :variants, through: :variant_attributes
end
  