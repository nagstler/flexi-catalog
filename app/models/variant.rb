class Variant < ApplicationRecord
    belongs_to :product
    has_many :variant_attributes
    has_many :attributes, through: :variant_attributes
    has_many :variant_images
    has_many :inventory_items
end
  