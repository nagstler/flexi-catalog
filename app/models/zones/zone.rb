class Zone < ApplicationRecord
    has_many :zone_members
    has_many :tax_rates
    has_many :shipping_methods
end
  