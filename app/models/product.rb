class Product < ApplicationRecord
    belongs_to :category
    belongs_to :brand
    has_many :product_attributes
    has_many :attributes, through: :product_attributes
    has_and_belongs_to_many :collections, join_table: "product_collections"
    has_many :product_tags
    has_many :tags, through: :product_tags
    has_many :product_images
    has_many :variants
    has_many :inventories
    has_many :order_items
end
  