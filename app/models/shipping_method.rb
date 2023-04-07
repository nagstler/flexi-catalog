class ShippingMethod < ApplicationRecord
    belongs_to :zone
    has_many :shipping_rates
    has_many :orders
end
  