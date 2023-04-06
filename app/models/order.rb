class Order < ApplicationRecord
    has_one :billing_address
    has_one :shipping_address
    has_many :order_items
    has_many :order_status_histories
    belongs_to :shipping_method
    belongs_to :tax_rate
    belongs_to :order_status
end
  