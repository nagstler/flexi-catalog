class Category < ApplicationRecord
    has_many :products

    validates :name, length: { minimum: 3, maximum: 100 }, uniqueness: { case_sensitive: false }
    validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
  