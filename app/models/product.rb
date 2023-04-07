class Product < ApplicationRecord
    belongs_to :category
    belongs_to :brand
    has_many :variants
    has_many :product_attributes
    has_many :attributes, through: :product_attributes
    has_many :product_images
    has_many :product_tags
    has_many :tags, through: :product_tags
    has_many :product_collections
    has_many :collections, through: :product_collections
    has_many :inventory_items
end
  