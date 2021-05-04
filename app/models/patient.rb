class Patient < ApplicationRecord
  belongs_to :bed, optional: true
  has_one :gender
end
