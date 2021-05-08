class Bed < ApplicationRecord
  has_one :bed_type
  has_one :wing
  belongs_to :patient, optional: true
end
