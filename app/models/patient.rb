class Patient < ApplicationRecord
  has_one :bed
  belongs_to :gender
end
