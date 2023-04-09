class Inventory < ApplicationRecord
    belongs_to :product
    belongs_to :variant
    belongs_to :location
end
  