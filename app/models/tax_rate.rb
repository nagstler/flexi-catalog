class TaxRate < ApplicationRecord
    belongs_to :tax_category
    belongs_to :zone
end
  