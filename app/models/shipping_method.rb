class ShippingMethod < ApplicationRecord
    belongs_to :zone
    has_many :orders
    has_many :shipping_rates
end
  