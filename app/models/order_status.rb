class OrderStatus < ApplicationRecord
    has_many :orders
    has_many :order_status_histories
end
  