class Variant < ApplicationRecord
    belongs_to :product
    has_many :variant_property_values
    has_many :properties, through: :variant_property_values, source: :property
    has_many :variant_images
    has_many :inventories
end
  