class Order < ApplicationRecord
    belongs_to :shipping_method
    belongs_to :tax_rate
    belongs_to :order_status
    has_many :order_items
    has_many :order_status_histories
    has_one :shipping_address
    has_one :billing_address
end
  