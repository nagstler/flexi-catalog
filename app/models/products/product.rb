class Product < ApplicationRecord
    belongs_to :category
    belongs_to :brand
    has_many :variants
    has_many :product_property_values
    has_many :properties, through: :product_property_values, source: :property
    has_many :product_images
    has_many :product_tags
    has_many :tags, through: :product_tags
    has_many :product_collections
    has_many :collections, through: :product_collections
    has_many :inventories
  
    validates :name, presence: true
    validates :category, presence: true
    validates :brand, presence: true
    validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  end
  