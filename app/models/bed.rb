class Bed < ApplicationRecord
  has_one :bed_type
  has_one :wing
  has_one :patient
end
