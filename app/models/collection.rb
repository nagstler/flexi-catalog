class Collection < ApplicationRecord
    has_and_belongs_to_many :products, join_table: "product_collections"
end
  