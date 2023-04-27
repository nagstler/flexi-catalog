class ZoneMember < ApplicationRecord
    belongs_to :zone
    belongs_to :zoneable, polymorphic: true
end
  