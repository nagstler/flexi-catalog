class TaxCategory < ApplicationRecord
    has_many :tax_rates
end
  