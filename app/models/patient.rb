class Patient < ApplicationRecord
  belongs_to :bed
  has_one :gender
end
