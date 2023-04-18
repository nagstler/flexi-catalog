class Brand < ApplicationRecord
    has_many :products
  
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
  